local M = {}

function M.get()
	if vim.treesitter.highlighter.hl_map then
		vim.notify(
			[[Catppuccin (info):
nvim-treesitter integration requires neovim 0.8
If you want to stay on nvim 0.7, either disable the integration or pin catppuccin tag to v0.2.4 and nvim-treesitter commit to 4cccb6f494eb255b32a290d37c35ca12584c74d0.
]],
			vim.log.levels.INFO
		)
		return {}
	end

	return { -- Reference: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

		-- Misc
		["@comment"] = { link = "Comment" },
		["@error"] = { link = "Error" },
		["@preproc"] = { link = "PreProc" }, -- various preprocessor directives & shebangs
		["@define"] = { link = "Define" }, -- preprocessor definition directives
		["@operator"] = { link = "Operator" }, -- For any operator: +, but also -> and * in C.

		-- Punctuation
		["@punctuation.delimiter"] = { fg = C.overlay2, ctermfg = T.overlay2 }, -- For delimiters ie: .
		["@punctuation.bracket"] = { fg = C.overlay2, ctermfg = T.overlay2 }, -- For brackets and parenthesis.
		["@punctuation.special"] = { fg = C.sky, ctermfg = T.sky, style = O.styles.operators or {} }, -- For special punctutation that does not fall in the catagories before.

		-- Literals
		["@string"] = { link = "String" }, -- For strings.
		["@string.regex"] = { fg = C.peach, ctermfg = T.peach, style = O.styles.strings or {} }, -- For regexes.
		["@string.escape"] = { fg = C.pink, ctermfg = T.pink, style = O.styles.strings }, -- For escape characters within a string.
		["@string.special"] = { fg = C.blue, ctermfg = T.blue }, -- other special strings (e.g. dates)

		["@character"] = { link = "Character" }, -- character literals
		["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

		["@boolean"] = { link = "Boolean" }, -- For booleans.
		["@number"] = { link = "Number" }, -- For all numbers
		["@float"] = { link = "Number" }, -- For floats.

		-- Functions
		["@function"] = { link = "Function" }, -- For function (calls and definitions).
		["@function.builtin"] = { fg = C.peach, ctermfg = T.peach, style = O.styles.functions or {} }, -- For builtin functions: table.insert in Lua.
		["@function.call"] = { link = "@function" }, -- function calls
		["@function.macro"] = { fg = C.teal, ctermfg = T.teal, style = O.styles.functions or {} }, -- For macro defined functions (calls and definitions): each macro_rules in RusC.
		["@method"] = { fg = C.peach, ctermfg = T.peach, style = O.styles.functions or {} }, -- For method calls and definitions.

		["@method.call"] = { link = "@method" }, -- method calls

		["@constructor"] = { fg = C.sapphire, ctermfg = T.sapphire }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
		["@parameter"] = { fg = C.maroon, ctermfg = T.maroon, style = { "italic" } }, -- For parameters of a function.

		-- Keywords
		["@keyword"] = { link = "Keyword" }, -- For keywords that don't fall in previous categories.
		["@keyword.function"] = { fg = C.mauve, ctermfg = T.mauve, style = O.styles.keywords or {} }, -- For keywords used to define a function.
		["@keyword.operator"] = { fg = C.mauve, ctermfg = T.mauve, style = O.styles.operators or {} }, -- For new keyword operator
		["@keyword.return"] = { fg = C.mauve, ctermfg = T.mauve, style = O.styles.keywords or {} },
		-- JS & derivative
		["@keyword.export"] = { fg = C.sky, ctermfg = T.sky, style = { "bold" } },

		["@conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.
		["@repeat"] = { link = "Repeat" }, -- For keywords related to loops.
		-- @debug            ; keywords related to debugging
		["@label"] = { link = "Label" }, -- For labels: label: in C and :label: in Lua.
		["@include"] = { link = "Include" }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
		["@exception"] = { fg = C.mauve, ctermfg = T.mauve, style = O.styles.keywords or {} }, -- For exception related keywords.

		-- Types

		["@type"] = { link = "Type" }, -- For types.
		["@type.builtin"] = { fg = C.yellow, ctermfg = T.yellow, style = O.styles.properties or "italic" }, -- For builtin types.
		["@type.definition"] = { link = "@type" }, -- type definitions (e.g. `typedef` in C)
		["@type.qualifier"] = { link = "@type" }, -- type qualifiers (e.g. `const`)

		["@storageclass"] = { link = "StorageClass" }, -- visibility/life-time/etc. modifiers (e.g. `static`)
		["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators)
		["@field"] = { fg = C.lavender, ctermfg = T.lavender }, -- For fields.
		["@property"] = { fg = C.lavender, ctermfg = T.lavender, style = O.styles.properties or {} }, -- Same as TSField.

		-- Identifiers

		["@variable"] = { fg = C.text, ctermfg = T.text, style = O.styles.variables or {} }, -- Any variable name that does not have another highlight.
		["@variable.builtin"] = { fg = C.red, ctermfg = T.red }, -- Variable names that are defined by the languages, like this or self.

		["@constant"] = { fg = C.peach, ctermfg = T.peach }, -- For constants
		["@constant.builtin"] = { fg = C.peach, ctermfg = T.peach, style = O.styles.keywords or {} }, -- For constant that are built in the language: nil in Lua.
		["@constant.macro"] = { link = "Macro" }, -- For constants that are defined by macros: NULL in C.

		["@namespace"] = { fg = C.lavender, ctermfg = T.lavender, style = { "italic" } }, -- For identifiers referring to modules and namespaces.
		["@symbol"] = { fg = C.flamingo, ctermfg = T.flamingo },

		-- Text

		["@text"] = { fg = C.text, ctermfg = T.text }, -- For strings considerated text in a markup language.
		["@text.strong"] = { fg = C.maroon, ctermfg = T.maroon, style = { "bold" } }, -- bold
		["@text.emphasis"] = { fg = C.maroon, ctermfg = T.maroon, style = { "italic" } }, -- italic
		["@text.underline"] = { link = "Underline" }, -- underlined text
		["@text.strike"] = { fg = C.text, ctermfg = T.text, style = { "strikethrough" } }, -- strikethrough text
		["@text.title"] = { fg = C.blue, ctermfg = T.blue, style = { "bold" } }, -- titles like: # Example
		["@text.literal"] = { fg = C.teal, ctermfg = T.teal }, -- used for inline code in markdown and for doc in python (""")
		["@text.uri"] = { fg = C.rosewater, ctermfg = T.rosewater, style = { "italic", "underline" } }, -- urls, links and emails
		["@text.math"] = { fg = C.blue, ctermfg = T.blue }, -- math environments (e.g. `$ ... $` in LaTeX)
		["@text.environment"] = { fg = C.pink, ctermfg = T.pink }, -- text environments of markup languages
		["@text.environment.name"] = { fg = C.blue, ctermfg = T.blue }, -- text indicating the type of an environment
		["@text.reference"] = { fg = C.lavender, ctermfg = T.lavender, style = { "bold" } }, -- references

		["@text.todo"] = { fg = C.base, ctermfg = T.base, bg = C.yellow, ctermbg = T.yellow }, -- todo notes
		["@text.todo.checked"] = { fg = C.green, ctermfg = T.green }, -- todo notes
		["@text.todo.unchecked"] = { fg = C.overlay1, ctermfg = T.overlay1 }, -- todo notes
		["@text.note"] = { fg = C.base, ctermfg = T.base, bg = C.blue, ctermbg = T.blue },
		["@text.warning"] = { fg = C.base, ctermfg = T.base, bg = C.yellow, ctermbg = T.yellow },
		["@text.danger"] = { fg = C.base, ctermfg = T.base, bg = C.red, ctermbg = T.red },

		["@text.diff.add"] = { link = "diffAdded" }, -- added text (for diff files)
		["@text.diff.delete"] = { link = "diffRemoved" }, -- deleted text (for diff files)

		-- Tags
		["@tag"] = { fg = C.mauve, ctermfg = T.mauve }, -- Tags like html tag names.
		["@tag.attribute"] = { fg = C.teal, ctermfg = T.teal, style = { "italic" } }, -- Tags like html tag names.
		["@tag.delimiter"] = { fg = C.sky, ctermfg = T.sky }, -- Tag delimiter like < > /

		-- Semantic tokens
		["@class"] = { fg = C.blue, ctermfg = T.blue },
		["@struct"] = { fg = C.blue, ctermfg = T.blue },
		["@enum"] = { fg = C.teal, ctermfg = T.teal },
		["@enumMember"] = { fg = C.flamingo, ctermfg = T.flamingo },
		["@event"] = { fg = C.flamingo, ctermfg = T.flamingo },
		["@interface"] = { fg = C.flamingo, ctermfg = T.flamingo },
		["@modifier"] = { fg = C.flamingo, ctermfg = T.flamingo },
		["@regexp"] = { fg = C.pink, ctermfg = T.pink },
		["@typeParameter"] = { fg = C.yellow, ctermfg = T.yellow },
		["@decorator"] = { fg = C.flamingo, ctermfg = T.flamingo },

		-- Language specific:

		-- css
		["@property.css"] = { fg = C.lavender, ctermfg = T.lavender },
		["@property.id.css"] = { fg = C.blue, ctermfg = T.blue },
		["@property.class.css"] = { fg = C.yellow, ctermfg = T.yellow },
		["@type.css"] = { fg = C.lavender, ctermfg = T.lavender },
		["@type.tag.css"] = { fg = C.mauve, ctermfg = T.mauve },
		["@string.plain.css"] = { fg = C.peach, ctermfg = T.peach },
		["@number.css"] = { fg = C.peach, ctermfg = T.peach },

		-- toml
		["@property.toml"] = { fg = C.blue, ctermfg = T.blue }, -- Differentiates between string and properties

		-- json
		["@label.json"] = { fg = C.blue, ctermfg = T.blue }, -- For labels: label: in C and :label: in Lua.

		-- lua
		["@constructor.lua"] = { fg = C.flamingo, ctermfg = T.flamingo }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

		-- typescript
		["@constructor.typescript"] = { fg = C.lavender, ctermfg = T.lavender },

		-- TSX (Typescript React)
		["@constructor.tsx"] = { fg = C.lavender, ctermfg = T.lavender },
		["@tag.attribute.tsx"] = { fg = C.mauve, ctermfg = T.mauve, style = { "italic" } },

		-- cpp
		["@property.cpp"] = { fg = C.rosewater, ctermfg = T.rosewater },

		-- yaml
		["@field.yaml"] = { fg = C.blue, ctermfg = T.blue }, -- For fields.

		-- Ruby
		["@symbol.ruby"] = { fg = C.flamingo, ctermfg = T.flamingo },

		-- PHP
		["@type.qualifier.php"] = { link = "Keyword" }, -- type qualifiers (e.g. `const`)
		["@method.php"] = { link = "Function" },
		["@method.call.php"] = { link = "Function" },
	}
end

return M
