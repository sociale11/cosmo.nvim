local colors = require("cosmo.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- Noice.nvim plugin highlight groups
  -- Command line
  vim.api.nvim_set_hl(0, "NoiceCmdline", { fg = p.fg1, bg = p.bg3 })              -- #21252B
  vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = p.amber })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIconCmdline", { fg = p.amber })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIconFilter", { fg = p.amber })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIconLua", { fg = p.amber })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch", { fg = p.amber })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { fg = p.fg1, bg = p.bg3 })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = "#181A1F", bg = p.bg3 })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopupTitle", { fg = p.amber, bold = true })

  -- Command line prompt
  vim.api.nvim_set_hl(0, "NoiceCmdlinePrompt", { fg = p.amber, bold = true })

  -- Completion menu
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindDefault", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindKeyword", { fg = p.red })       -- #e06c75
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindVariable", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindConstant", { fg = p.teal })     -- #56b6c2
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindReference", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindValue", { fg = p.teal })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindFunction", { fg = p.green })    -- #98c379
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindMethod", { fg = p.green })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindConstructor", { fg = p.blue })  -- #61afef
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindClass", { fg = p.blue })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindInterface", { fg = p.blue })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindStruct", { fg = p.teal })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindEvent", { fg = p.amber })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindOperator", { fg = p.red })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindTypeParameter", { fg = p.blue })

  -- Confirm dialog
  vim.api.nvim_set_hl(0, "NoiceConfirm", { fg = p.fg1, bg = p.bg3 })
  vim.api.nvim_set_hl(0, "NoiceConfirmBorder", { fg = "#181A1F", bg = p.bg3 })

  -- Messages
  vim.api.nvim_set_hl(0, "NoicePopup", { fg = p.fg1, bg = p.bg3 })
  vim.api.nvim_set_hl(0, "NoicePopupBorder", { fg = "#181A1F", bg = p.bg3 })
  vim.api.nvim_set_hl(0, "NoicePopupmenu", { fg = p.fg1, bg = p.bg0 })            -- #0F131A
  vim.api.nvim_set_hl(0, "NoicePopupmenuBorder", { fg = "#181A1F", bg = p.bg0 })
  vim.api.nvim_set_hl(0, "NoicePopupmenuSelected", { fg = p.amber, bg = "#2c313a" })
  vim.api.nvim_set_hl(0, "NoicePopupmenuMatch", { fg = p.amber, bold = true })

  -- Split view
  vim.api.nvim_set_hl(0, "NoiceSplit", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "NoiceSplitBorder", { fg = "#181A1F", bg = p.bg1 })

  -- Virtual text
  vim.api.nvim_set_hl(0, "NoiceVirtualText", { fg = p.gray, italic = true })

  -- LSP progress
  vim.api.nvim_set_hl(0, "NoiceLspProgressClient", { fg = p.amber, bold = true })
  vim.api.nvim_set_hl(0, "NoiceLspProgressSpinner", { fg = p.amber })
  vim.api.nvim_set_hl(0, "NoiceLspProgressTitle", { fg = p.fg1 })

  -- Search
  vim.api.nvim_set_hl(0, "NoiceFormatProgressDone", { fg = p.amber, bold = true })
  vim.api.nvim_set_hl(0, "NoiceFormatProgressTodo", { fg = p.gray })

  -- Mini views
  vim.api.nvim_set_hl(0, "NoiceMini", { fg = p.fg1, bg = p.bg3 })

  -- Scrollbar
  vim.api.nvim_set_hl(0, "NoiceScrollbar", { bg = p.bg3 })
  vim.api.nvim_set_hl(0, "NoiceScrollbarThumb", { bg = "#b39b4d" })

  -- Cursor
  vim.api.nvim_set_hl(0, "NoiceCursor", { fg = p.bg1, bg = p.fg0 })

  -- History
  vim.api.nvim_set_hl(0, "NoiceHistory", { fg = p.fg1, bg = p.bg3 })
  vim.api.nvim_set_hl(0, "NoiceHistoryBorder", { fg = "#181A1F", bg = p.bg3 })
end

return M
