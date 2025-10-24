local M = {}

function M.colorscheme()
  -- Load the main colors
  require("cosmo.colors").apply()
end

function M.lualine()
  return require("cosmo.lualine")
end

function M.snacks()
  require("cosmo.snacks").apply()
end

function M.treesitter()
  require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
  })
end

return M