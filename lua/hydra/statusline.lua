local statusline = {}

---Returns `true` if there is an active hydra
---@return boolean
function statusline.is_active()
   return (_G.Hydra or _G.active_keymap_layer) and true or false
end

---Get the name of an active Hydra if it has it
---@return string | nil
function statusline.get_name()
   return (_G.Hydra and _G.Hydra.name) or (_G.active_keymap_layer and _G.active_keymap_layer.name)
end

---Get an active Hydra's statusline hint if it provides it
---@return string?
function statusline.get_hint()
   if not _G.Hydra then return end
   local hint_type = _G.Hydra.config.hint and _G.Hydra.config.hint.type
   if _G.Hydra.config.hint == false or hint_type == "statuslinemanual" or hint_type == "statusline" then
      return _G.Hydra.hint:show(true)
   end
end

---Get the color of an active Hydra, or nil if there is no active hydra
---@return string | nil
function statusline.get_color()
   return (_G.Hydra and string.lower(_G.Hydra.config.color)) or (_G.active_keymap_layer and "pink")
end

return statusline
