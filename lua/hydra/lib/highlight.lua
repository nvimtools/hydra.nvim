local api = vim.api

local name, settings
for _, color in ipairs({ 'Red', 'Blue', 'Amaranth', 'Teal', 'Pink' }) do
   settings = vim.tbl_deep_extend('force',
      api.nvim_get_hl(0, { name = 'StatusLine', link = false }),
      api.nvim_get_hl(0, { name = string.format('Hydra%s', color), link = false })
   )
   name = string.format('HydraStatusLine%s', color)
   api.nvim_set_hl(0, name, settings)
end

