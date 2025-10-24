local colors = require("cosmo.colors").palette

local cosmo = {}

-- Cosmo lualine theme
cosmo.normal = {
  a = { fg = "#FFFFFF", bg = colors.amber, gui = "bold" },  -- #B39C4D amber accent
  b = { fg = colors.fg1, bg = colors.bg3 },                 -- #21252B status bar bg
  c = { fg = colors.fg3, bg = colors.bg0 },                 -- #0F131A sidebar bg
}

cosmo.insert = {
  a = { fg = colors.bg1, bg = colors.red, gui = "bold" },   -- #e06c75
}

cosmo.visual = {
  a = { fg = colors.bg1, bg = colors.purple, gui = "bold" }, -- #c678dd
}

cosmo.replace = {
  a = { fg = colors.bg1, bg = colors.orange, gui = "bold" }, -- #d19a66
}

cosmo.command = {
  a = { fg = colors.bg1, bg = colors.green, gui = "bold" },  -- #98c379
}

cosmo.inactive = {
  a = { fg = colors.gray, bg = colors.bg0 },
  b = { fg = colors.gray, bg = colors.bg0 },
  c = { fg = colors.gray, bg = colors.bg0 },
}

return cosmo 