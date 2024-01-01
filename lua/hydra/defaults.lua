local M = {}

---@type hydra.Config
M.default_config = {
  debug = false,
  exit = false,
  foreign_keys = nil,
  color = "red",
  timeout = false,
  invoke_on_body = false,
  hint = {
    show_name = true,
    position = { "bottom" },
    offset = 0,
  },
}

--- Setup the default configuration
--- @param opts hydra.OptionalConfig
M.setup = function(opts)
  M.default_config = vim.tbl_deep_extend("force", M.default_config, opts)
end

return M
