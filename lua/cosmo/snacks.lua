local colors = require("cosmo.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- Dashboard
  vim.api.nvim_set_hl(0, "SnacksDashboard", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = p.fg1, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = p.fg3, italic = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = p.amber, bold = true })     -- #B39C4D
  vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = p.amber })
  vim.api.nvim_set_hl(0, "SnacksDashboardTitle", { fg = p.amber, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardFile", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksDashboardDir", { fg = p.blue })                   -- #61afef
  vim.api.nvim_set_hl(0, "SnacksDashboardRecentFiles", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "SnacksDashboardShortcut", { fg = p.amber })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminal", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalBorder", { fg = p.gray })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalTitle", { fg = p.amber, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInput", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputBorder", { fg = p.gray })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputSearch", { fg = p.amber })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputSearchBorder", { fg = p.gray })

  -- Picker
  vim.api.nvim_set_hl(0, "SnacksPicker", { fg = p.fg, bg = p.bg0 })
  vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = "#181A1F", bg = p.bg0 })
  vim.api.nvim_set_hl(0, "SnacksPickerTitle", { fg = p.amber, bg = p.bg0, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerIcon", { fg = p.amber })
  vim.api.nvim_set_hl(0, "SnacksPickerIconDir", { fg = p.blue })                     -- #61afef
  vim.api.nvim_set_hl(0, "SnacksPickerIconFile", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = p.amber, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerCursor", { fg = p.bg, bg = p.amber })
  vim.api.nvim_set_hl(0, "SnacksPickerCursorLine", { bg = "#2c313a" })
  vim.api.nvim_set_hl(0, "SnacksPickerPreview", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerPreviewBorder", { fg = "#181A1F", bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerPreviewTitle", { fg = p.amber, bg = p.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerList", { fg = p.fg, bg = p.bg0 })
  vim.api.nvim_set_hl(0, "SnacksPickerListBorder", { fg = "#181A1F", bg = p.bg0 })
  vim.api.nvim_set_hl(0, "SnacksPickerListTitle", { fg = p.amber, bg = p.bg0, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerInput", { fg = p.fg, bg = p.bg0 })
  vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", { fg = "#181A1F", bg = p.bg0 })
  vim.api.nvim_set_hl(0, "SnacksPickerInputSearch", { fg = p.amber, bg = p.bg0 })
  vim.api.nvim_set_hl(0, "SnacksPickerBoxBorder", { fg = "#181A1F", bg = p.bg0 })

  -- Notifier
  vim.api.nvim_set_hl(0, "SnacksNotifier", { fg = p.fg, bg = "#21252b" })        -- notifications.background
  vim.api.nvim_set_hl(0, "SnacksNotifierBorder", { fg = "#181A1F", bg = "#21252b" })
  vim.api.nvim_set_hl(0, "SnacksNotifierTitle", { fg = p.amber, bold = true })
  vim.api.nvim_set_hl(0, "SnacksNotifierIcon", { fg = p.amber })
  vim.api.nvim_set_hl(0, "SnacksNotifierBody", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksNotifierInfo", { fg = p.blue })                  -- #61afef
  vim.api.nvim_set_hl(0, "SnacksNotifierWarn", { fg = p.amber })                 -- #B39C4D
  vim.api.nvim_set_hl(0, "SnacksNotifierError", { fg = p.crimson })              -- #c24038
  vim.api.nvim_set_hl(0, "SnacksNotifierDebug", { fg = p.gray })
  vim.api.nvim_set_hl(0, "SnacksNotifierTrace", { fg = p.purple })

  -- Terminal
  vim.api.nvim_set_hl(0, "SnacksTerminal", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksTerminalBorder", { fg = "#181A1F", bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksTerminalTitle", { fg = p.amber, bg = p.bg, bold = true })

  -- Input
  vim.api.nvim_set_hl(0, "SnacksInput", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksInputBorder", { fg = "#181A1F", bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksInputTitle", { fg = p.amber, bg = p.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksInputIcon", { fg = p.amber })

  -- Indent
  vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#3B4048" })                     -- editorIndentGuide.background1
  vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = p.amber })

  -- Explorer
  vim.api.nvim_set_hl(0, "SnacksExplorer", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksExplorerBorder", { fg = "#181A1F", bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksExplorerTitle", { fg = p.amber, bg = p.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerDir", { fg = p.blue, bold = true })         -- #61afef
  vim.api.nvim_set_hl(0, "SnacksExplorerFile", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksExplorerLink", { fg = p.blue, underline = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerIcon", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "SnacksExplorerIconDir", { fg = p.blue })
  vim.api.nvim_set_hl(0, "SnacksExplorerIconFile", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksExplorerIconLink", { fg = p.blue, underline = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitAdded", { fg = p.green })               -- #98c379
  vim.api.nvim_set_hl(0, "SnacksExplorerGitModified", { fg = p.yellow })           -- #e5c07b
  vim.api.nvim_set_hl(0, "SnacksExplorerGitDeleted", { fg = p.red })               -- #e06c75
  vim.api.nvim_set_hl(0, "SnacksExplorerGitIgnored", { fg = p.gray })

  -- Scroll
  vim.api.nvim_set_hl(0, "SnacksScroll", { fg = p.amber, bg = "NONE" })
  vim.api.nvim_set_hl(0, "SnacksScrollThumb", { bg = "#b39b4d" })              -- scrollbarSlider.background

  -- Zen mode
  vim.api.nvim_set_hl(0, "SnacksZen", { fg = p.fg, bg = p.bg })

  -- Words (LSP references)
  vim.api.nvim_set_hl(0, "SnacksWords", { bg = "#2c313a", underline = true })

  -- Dim (inactive code)
  vim.api.nvim_set_hl(0, "SnacksDim", { fg = p.gray })

  -- Scratch
  vim.api.nvim_set_hl(0, "SnacksScratch", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksScratchBorder", { fg = "#181A1F", bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksScratchTitle", { fg = p.amber, bg = p.bg, bold = true })

  -- Statuscolumn
  vim.api.nvim_set_hl(0, "SnacksStatusColumn", { fg = p.gray, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnNumber", { fg = p.fg3 })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnRelNumber", { fg = p.amber })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitAdd", { fg = p.green })           -- #98c379
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitChange", { fg = p.yellow })       -- #e5c07b
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitDelete", { fg = p.red })          -- #e06c75
end

return M 