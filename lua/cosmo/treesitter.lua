---@diagnostic disable: undefined-global

local colors = require("cosmo.colors")

local M = {}

local function set(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end

function M.apply()
  local p = colors.palette

  local highlights = {
    -- Comments
    ["@comment"] = { fg = p.comment, italic = true },
    ["@comment.documentation"] = { fg = p.comment, italic = true },
    ["@comment.error"] = { fg = p.crimson, italic = true },
    ["@comment.warning"] = { fg = p.amber, italic = true },
    ["@comment.todo"] = { fg = p.yellow, italic = true },
    ["@comment.note"] = { fg = p.comment, italic = true },
    ["@comment.hint"] = { fg = p.comment, italic = true },
    ["@comment.hack"] = { fg = p.amber, italic = true },
    ["@comment.fixme"] = { fg = p.crimson, bold = true },
    ["@comment.xxx"] = { fg = p.purple, bold = true },

    -- Constants
    ["@constant"] = { fg = p.teal },                    -- #56b6c2
    ["@constant.builtin"] = { fg = p.teal },            -- #56b6c2
    ["@constant.macro"] = { fg = p.red },               -- #e06c75

    -- Strings
    ["@string"] = { fg = p.yellow },                    -- #e5c07b
    ["@string.documentation"] = { fg = p.yellow },      -- #e5c07b
    ["@string.regex"] = { fg = p.yellow },              -- #e5c07b
    ["@string.escape"] = { fg = p.purple },             -- #c678dd
    ["@string.special"] = { fg = p.purple },            -- #c678dd
    ["@string.special.symbol"] = { fg = p.purple },     -- #c678dd
    ["@string.special.path"] = { fg = p.yellow },       -- #e5c07b
    ["@string.special.url"] = { fg = p.blue },          -- #61afef

    -- Characters & numbers
    ["@character"] = { fg = p.yellow },                 -- #e5c07b
    ["@character.special"] = { fg = p.purple },         -- #c678dd
    ["@number"] = { fg = p.purple },                    -- #c678dd
    ["@number.float"] = { fg = p.purple },              -- #c678dd
    ["@boolean"] = { fg = p.teal },                     -- #56b6c2

    -- Functions
    ["@function"] = { fg = p.green },                   -- #98c379
    ["@function.builtin"] = { fg = p.green },           -- #98c379
    ["@function.call"] = { fg = p.fg1 },                -- #abb2bf
    ["@function.macro"] = { fg = p.green },             -- #98c379
    ["@function.method"] = { fg = p.green },            -- #98c379
    ["@function.method.call"] = { fg = p.fg1 },         -- #abb2bf
    ["@function.decorator"] = { fg = p.blue },          -- #61afef
    ["@constructor"] = { fg = p.blue },                 -- #61afef

    -- Variables
    ["@variable"] = { fg = p.fg1 },                     -- #abb2bf
    ["@variable.builtin"] = { fg = p.red },             -- #e06c75
    ["@variable.parameter"] = { fg = p.orange, italic = true },  -- #d19a66
    ["@variable.member"] = { fg = p.fg1 },              -- #abb2bf
    ["@variable.global"] = { fg = p.blue },             -- #61afef
    ["@variable.special"] = { fg = p.blue },            -- #61afef

    -- Fields & properties
    ["@field"] = { fg = p.fg1 },                        -- #abb2bf
    ["@property"] = { fg = p.fg1 },                     -- #abb2bf
    ["@label"] = { fg = p.blue },                       -- #61afef

    -- Types & namespaces
    ["@type"] = { fg = p.teal },                        -- #56b6c2
    ["@type.builtin"] = { fg = p.teal },                -- #56b6c2
    ["@type.definition"] = { fg = p.blue },             -- #61afef
    ["@type.qualifier"] = { fg = p.red },               -- #e06c75
    ["@type.interface"] = { fg = p.blue },              -- #61afef
    ["@type.parameter"] = { fg = p.blue },              -- #61afef
    ["@namespace"] = { fg = p.blue },                   -- #61afef
    ["@module"] = { fg = p.blue },                      -- #61afef

    -- Keywords & operators
    ["@keyword"] = { fg = p.red },                      -- #e06c75
    ["@keyword.function"] = { fg = p.red },             -- #e06c75
    ["@keyword.operator"] = { fg = p.red },             -- #e06c75
    ["@keyword.return"] = { fg = p.red },               -- #e06c75
    ["@keyword.import"] = { fg = p.blue },              -- #61afef
    ["@keyword.conditional"] = { fg = p.red },          -- #e06c75
    ["@keyword.repeat"] = { fg = p.red },               -- #e06c75
    ["@keyword.exception"] = { fg = p.red },            -- #e06c75
    ["@keyword.directive"] = { fg = p.red },            -- #e06c75
    ["@keyword.directive.define"] = { fg = p.red },     -- #e06c75
    ["@keyword.modifier"] = { fg = p.red },             -- #e06c75
    ["@operator"] = { fg = p.red },                     -- #e06c75

    -- Punctuation
    ["@punctuation"] = { fg = p.fg1 },                  -- #abb2bf
    ["@punctuation.delimiter"] = { fg = p.fg1 },        -- #abb2bf
    ["@punctuation.bracket"] = { fg = p.fg1 },          -- #abb2bf
    ["@punctuation.special"] = { fg = p.purple },       -- #c678dd
    ["@punctuation.special.symbol"] = { fg = p.purple }, -- #c678dd

    -- Decorators & attributes
    ["@attribute"] = { fg = p.green },                  -- #98c379
    ["@decorator"] = { fg = p.blue },                   -- #61afef

    -- Tags (HTML/XML)
    ["@tag"] = { fg = p.red },                          -- #e06c75
    ["@tag.attribute"] = { fg = p.green },              -- #98c379
    ["@tag.delimiter"] = { fg = p.fg1 },                -- #abb2bf

    -- Markup (Markdown)
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.heading"] = { fg = p.red, bold = true },     -- #e06c75
    ["@markup.link"] = { fg = p.blue },                    -- #61afef
    ["@markup.link.url"] = { fg = p.blue },                -- #61afef
    ["@markup.link.label"] = { fg = p.blue },              -- #61afef
    ["@markup.list"] = { fg = p.fg0, bold = true },        -- #f8f8f0
    ["@markup.list.checked"] = { fg = p.green },           -- #98c379
    ["@markup.list.unchecked"] = { fg = p.fg0, bold = true }, -- #f8f8f0
    ["@markup.quote"] = { fg = p.green },                  -- #98c379
    ["@markup.raw"] = { fg = p.teal },                     -- #56b6c2
    ["@markup.raw.block"] = { fg = p.teal },               -- #56b6c2
    ["@markup.math"] = { fg = p.purple },                  -- #c678dd
    ["@markup.underline"] = { underline = true },

    -- Diff / SCM
    ["@diff.plus"] = { fg = p.green },                  -- #98c379
    ["@diff.minus"] = { fg = p.red },                   -- #e06c75
    ["@diff.delta"] = { fg = p.yellow },                -- #e5c07b

    -- Preprocessor
    ["@preproc"] = { fg = p.red },                      -- #e06c75
    ["@include"] = { fg = p.blue },                     -- #61afef
    ["@define"] = { fg = p.red },                       -- #e06c75
    ["@conditional"] = { fg = p.red },                  -- #e06c75
    ["@repeat"] = { fg = p.red },                       -- #e06c75
    ["@exception"] = { fg = p.red },                    -- #e06c75

    -- Special cases
    ["@character.printf"] = { fg = p.purple },          -- #c678dd
  }

  for group, spec in pairs(highlights) do
    set(group, spec)
  end

  -- Language specific overrides
  set("@function.builtin.lua", { fg = p.green })           -- #98c379
  set("@variable.builtin.lua", { fg = p.red })             -- #e06c75
  set("@function.builtin.python", { fg = p.green })        -- #98c379
  set("@variable.builtin.python", { fg = p.red })          -- #e06c75
  set("@function.builtin.javascript", { fg = p.green })    -- #98c379
  set("@variable.builtin.javascript", { fg = p.red })      -- #e06c75
end

return M
