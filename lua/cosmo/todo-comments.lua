local colors = require("cosmo.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- todo-comments.nvim specific highlight groups (Cosmo colors)
  vim.api.nvim_set_hl(0, "TodoBgTODO", { fg = p.bg1, bg = p.yellow, bold = true })       -- #e5c07b
  vim.api.nvim_set_hl(0, "TodoFgTODO", { fg = p.yellow, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgFIX", { fg = p.bg1, bg = p.crimson, bold = true })       -- #c24038
  vim.api.nvim_set_hl(0, "TodoFgFIX", { fg = p.crimson, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgFIXME", { fg = p.bg1, bg = p.crimson, bold = true })     -- #c24038
  vim.api.nvim_set_hl(0, "TodoFgFIXME", { fg = p.crimson, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgHACK", { fg = p.bg1, bg = p.amber, bold = true })        -- #B39C4D
  vim.api.nvim_set_hl(0, "TodoFgHACK", { fg = p.amber, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgNOTE", { fg = p.bg1, bg = p.blue })                      -- #61afef
  vim.api.nvim_set_hl(0, "TodoFgNOTE", { fg = p.blue })
  vim.api.nvim_set_hl(0, "TodoBgWARN", { fg = p.bg1, bg = p.amber, bold = true })        -- #B39C4D
  vim.api.nvim_set_hl(0, "TodoFgWARN", { fg = p.amber, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgPERF", { fg = p.bg1, bg = p.purple, bold = true })       -- #c678dd
  vim.api.nvim_set_hl(0, "TodoFgPERF", { fg = p.purple, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgTEST", { fg = p.bg1, bg = p.green, bold = true })        -- #98c379
  vim.api.nvim_set_hl(0, "TodoFgTEST", { fg = p.green, bold = true })

  -- Additional todo-comments.nvim variants
  vim.api.nvim_set_hl(0, "TodoSignTODO", { fg = p.yellow, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignFIX", { fg = p.crimson, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignFIXME", { fg = p.crimson, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignHACK", { fg = p.amber, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignNOTE", { fg = p.blue })
  vim.api.nvim_set_hl(0, "TodoSignWARN", { fg = p.amber, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignPERF", { fg = p.purple, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignTEST", { fg = p.green, bold = true })
end

return M
