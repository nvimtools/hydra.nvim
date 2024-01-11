local Parser = {}

---Evaluate function values
---@param line string
---@param funcs table
---@return string
---@return boolean
function Parser.eval_funcs(line, funcs)
  local start, stop, fname = 0, nil, nil
  local need_to_update = false
  while start do
    start, stop, fname = line:find("%%{(.-)}", 1)
    if start then
      need_to_update = true

      local fun = funcs[fname]
      if not fun then
        error(string.format('[Hydra] "%s" not present in "config.hint.functions" table', fname))
      end

      line = table.concat({
        line:sub(1, start - 1),
        fun(),
        line:sub(stop + 1),
      })
    end
  end

  return line, need_to_update
end

---Parse the heads in a hint string, adding highlights with the given function
--- modifies the heads table
---@param line string
---@param heads table
---@param highlight function
Parser.parse_heads = function(line, heads, highlight)
  local start, stop, head = 0, 0, nil
  while start do
    start, stop, head = line:find('_(.-)_', stop + 1)
    if head and vim.startswith(head, [[\]]) then head = head:sub(2) end
    if start then
      if not heads[head] then
        error(string.format('[Hydra] docsting error, head "%s" does not exist', head))
      end
      local color = heads[head].color
      -- TODO: create this function. and pass it.
      -- buffer:add_highlight(namespace, 'Hydra' .. color, n - 1, start, stop - 1)
      highlight(color, start, stop - 1)
      heads[head] = nil
    end
  end
end

return Parser
