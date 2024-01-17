local class = require('hydra.lib.class')
local BaseHint = require('hydra.hint.basehint')
local M = {}

---Auto generated status line
---@class hydra.hint.StatusLine : hydra.Hint
---@field update nil
local HintAutoStatusLine = class(BaseHint)

function HintAutoStatusLine:initialize(input)
   BaseHint.initialize(self, input)
end

function HintAutoStatusLine:_make_statusline()
   if self.statusline then return end

   require('hydra.lib.highlight')

   ---@type string[]
   local statusline = {}
   local heads = self:_get_heads_in_sequential_form()
   for _, head in ipairs(heads) do
      if head.desc ~= false then
         vim.list_extend(statusline, {
            string.format('%%#HydraStatusLine%s#', head.color),
            head.head,
            '%#StatusLine#',
            head.desc and string.format(': %s, ', head.desc) or ', '
         })
      end
   end
   statusline = table.concat(statusline) ---@diagnostic disable-line
   self.statusline = statusline:gsub(', $', '')
end

function HintAutoStatusLine:show()
   if not self.statusline then self:_make_statusline() end

   local statusline = { ' ', self.statusline } ---@type string[]
   if self.config.show_name then
      table.insert(statusline, 2, (self.hydra_name or 'HYDRA')..': ')
   end
   statusline = table.concat(statusline) ---@diagnostic disable-line

   self.original_statusline = vim.wo.statusline
   vim.wo.statusline = statusline
end

function HintAutoStatusLine:close()
   if self.original_statusline then
      vim.wo.statusline = self.original_statusline
      self.original_statusline = nil
   end
end

--------------------------------------------------------------------------------

---Statusline with custom hint string
---@class hydra.hint.ManualStatusLine : hydra.hint.StatusLine
---@field need_to_update boolean
local HintManualStatusLine = class(HintAutoStatusLine)

local vim_options = require('hydra.hint.vim-options')
function HintManualStatusLine:initialize(input)
   HintAutoStatusLine.initialize(self, input)
   self.need_to_update = false

   if type(self.config) == "table" then
      self.config.funcs = setmetatable(self.config.funcs or {}, {
         __index = vim_options
      })
   end
end

function HintManualStatusLine:_make_statusline()
   if self.statusline then return end
   if not self.hint then return HintAutoStatusLine._make_statusline(self) end

   require('hydra.lib.highlight')
   local parser = require("hydra.hint.parser")

   ---@type string
   local hint = self.hint
   hint = hint:gsub("%^", "")

   ---@type table<string, hydra.HeadSpec>
   local heads = vim.deepcopy(self.heads)

   ---@type string[]
   local statusline = {}

   -- eval funcs
   local parsed_line, need_to_update = parser.eval_funcs(hint, self.config.funcs)
   self.need_to_update = self.need_to_update or need_to_update
   hint = parsed_line

   local last_end = nil
   parser.parse_heads(hint, heads, function(color, start, end_)
      if last_end ~= nil then
         vim.list_extend(statusline, {
            hint:sub(last_end + 2, start - 1)
         })
      end
      local head_key = hint:sub(start + 1, end_)
      vim.list_extend(statusline, {
         string.format('%%#HydraStatusLine%s#', color),
         head_key,
         '%#StatusLine#',
      })
      last_end = end_
   end)

   vim.list_extend(statusline, {
      hint:sub(last_end + 2)
   })

   statusline = table.concat(statusline) ---@diagnostic disable-line
   self.statusline = statusline
end

function HintManualStatusLine:update()
   if not self.need_to_update then return end

   local saved_statusline = self.original_statusline
   self.statusline = nil
   self:_make_statusline()
   self:show()
   self.original_statusline = saved_statusline
end

--------------------------------------------------------------------------------

---Statusline hint that won't be shown. It is used in "hydra.statusline" module.
---@class hydra.hint.StatusLineMute : hydra.hint.ManualStatusLine
---@field config nil
local HintStatusLineMute = class(HintManualStatusLine)

function HintStatusLineMute:initialize(input)
   HintManualStatusLine.initialize(self, input)
end

---@param do_return? boolean Do return statusline hint string?
---@return string?
function HintStatusLineMute:show(do_return)
   if do_return then
      if not self.statusline then self:_make_statusline() end
      return self.statusline
   end
end

--------------------------------------------------------------------------------

M.HintAutoStatusLine = HintAutoStatusLine
M.HintManualStatusLine = HintManualStatusLine
M.HintStatusLineMute = HintStatusLineMute
return M
