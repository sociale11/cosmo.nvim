local colors = require("cosmo.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- Main neotree window (Cosmo sidebar colors)
  vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = p.fg1, bg = p.bg0 })          -- #0F131A sidebar bg
  vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { fg = p.fg1, bg = p.bg0 })
  vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { fg = p.bg0, bg = p.bg0 })
  vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = "#181A1F", bg = p.bg0 })
  vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { fg = "#181A1F", bg = p.bg0 })

  -- Title and tabs
  vim.api.nvim_set_hl(0, "NeoTreeTabInactive", { fg = p.fg3, bg = p.bg0 })
  vim.api.nvim_set_hl(0, "NeoTreeTabActive", { fg = p.amber, bg = p.bg1, bold = true })
  vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", { fg = "#181A1F", bg = p.bg0 })
  vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorActive", { fg = "#181A1F", bg = p.bg1 })

  -- Directory and file icons
  vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = p.amber, bold = true })

  -- File types and extensions
  vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { fg = p.amber, italic = true })
  vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#3B4048" })
  vim.api.nvim_set_hl(0, "NeoTreeExpander", { fg = p.fg1 })

  -- Cursor and selection
  vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#2c313a" })
  vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = p.fg3 })

  -- Git status indicators (Cosmo colors)
  vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = p.green })        -- #98c379
  vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = p.red })        -- #e06c75
  vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = p.gray2 })
  vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = p.yellow })    -- #e5c07b
  vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = p.green })
  vim.api.nvim_set_hl(0, "NeoTreeGitStaged", { fg = p.green })

  -- Symlinks
  vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = p.blue, italic = true })

  -- Floating window (for popups)
  vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = "#181A1F", bg = p.bg0 })
  vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { fg = p.amber, bg = p.bg0, bold = true })

  -- Preview window
  vim.api.nvim_set_hl(0, "NeoTreePreviewBorder", { fg = "#181A1F", bg = p.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreePreviewTitle", { fg = p.amber, bg = p.bg1, bold = true })

  -- Buffers tab
  vim.api.nvim_set_hl(0, "NeoTreeBufferNumber", { fg = p.fg3 })

  -- Statistics and info
  vim.api.nvim_set_hl(0, "NeoTreeStats", { fg = p.fg3, italic = true })
  vim.api.nvim_set_hl(0, "NeoTreeStatsHeader", { fg = p.amber, bold = true })

  -- Modified indicator
  vim.api.nvim_set_hl(0, "NeoTreeModified", { fg = p.yellow })

  -- Hidden files
  vim.api.nvim_set_hl(0, "NeoTreeHiddenByName", { fg = p.gray2, italic = true })

  -- Filter text
  vim.api.nvim_set_hl(0, "NeoTreeFilterTerm", { fg = p.amber, bold = true })

  -- Titlebar
  vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { fg = p.fg1, bg = p.bg0, bold = true })
end

return M
