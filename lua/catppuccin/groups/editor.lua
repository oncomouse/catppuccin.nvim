local M = {}

function M.get()
	return {
		ColorColumn = { bg = C.surface0, ctermbg = T.surface0 }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = C.overlay1, ctermfg = T.overlay1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = C.base, ctermfg = T.base, bg = C.text, ctermbg = T.text }, -- character under the cursor
		lCursor = { fg = C.base, ctermfg = T.base, bg = C.text, ctermbg = T.text }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = C.base, ctermfg = T.base, bg = C.text, ctermbg = T.text }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = C.mantle, ctermbg = T.mantle }, -- Screen-column at the cursor, when 'cursorcolumn' is seC.
		CursorLine = {
			bg = O.transparent_background and C.none
				or U.vary_color({ latte = U.lighten(C.mantle, 0.70, C.base) }, U.darken(C.surface0, 0.64, C.base)),
		}, -- Screen-line at the cursor, when 'cursorline' is seC.  Low-priority if forecrust (ctermfg OR guifg) is not seC.
		Directory = { fg = C.blue, ctermfg = T.blue }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = O.show_end_of_buffer and C.surface1 or C.base }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = C.red, ctermfg = T.red, style = { "bold", "italic" } }, -- error messages on the command line
		VertSplit = { fg = O.transparent_background and C.surface1 or C.crust }, -- the column separating vertically split windows
		Folded = { fg = C.blue, ctermfg = T.blue, bg = O.transparent_background and C.none or C.surface1 }, -- line used for closed folds
		FoldColumn = { fg = C.overlay0, ctermfg = T.overlay0 }, -- 'foldcolumn'
		SignColumn = { fg = C.surface1, ctermfg = T.surface1 }, -- column where |signs| are displayed
		SignColumnSB = { bg = C.crust, ctermbg = T.crust, fg = C.surface1, ctermfg = T.surface1 }, -- column where |signs| are displayed
		Substitute = { bg = C.surface1, ctermbg = T.surface1, fg = U.vary_color({ latte = C.red }, C.pink) }, -- |:substitute| replacement text highlighting
		LineNr = { fg = U.vary_color({ latte = C.base0 }, C.surface1) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is seC.
		CursorLineNr = { fg = C.lavender, ctermfg = T.lavender }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = C.peach, ctermfg = T.peach, style = { "bold" } }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = C.text, ctermfg = T.text, style = { "bold" } }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = C.text, ctermfg = T.text }, -- Area for messages and cmdline
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = C.blue, ctermfg = T.blue }, -- |more-prompt|
		NonText = { fg = C.overlay0, ctermfg = T.overlay0 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = C.text, ctermfg = T.text, bg = O.transparent_background and C.none or C.base }, -- normal text
		NormalNC = {
			fg = C.text, ctermfg = T.text,
			bg = (O.transparent_background and O.dim_inactive.enabled and C.dim)
				or (O.dim_inactive.enabled and C.dim)
				or (O.transparent_background and C.none)
				or C.base,
		}, -- normal text in non-current windows
		NormalSB = { fg = C.text, ctermfg = T.text, bg = C.crust, ctermbg = T.crust }, -- normal text in non-current windows
		NormalFloat = { fg = C.text, ctermfg = T.text, bg = O.transparent_background and C.none or C.mantle }, -- Normal text in floating windows.
		FloatBorder = { fg = C.blue, ctermfg = T.blue },
		Pmenu = { bg = O.transparent_background and C.none or U.darken(C.surface0, 0.8, C.crust), fg = C.overlay2, ctermfg = T.overlay2 }, -- Popup menu: normal item.
		PmenuSel = { fg = C.text, ctermfg = T.text, bg = C.surface1, ctermbg = T.surface1, style = { "bold" } }, -- Popup menu: selected item.
		PmenuSbar = { bg = C.surface1, ctermbg = T.surface1 }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = C.overlay0, ctermbg = T.overlay0 }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = C.blue, ctermfg = T.blue }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = C.surface1, ctermbg = T.surface1, style = { "bold" } }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = U.darken(C.sky, 0.30, C.base), fg = C.text, ctermfg = T.text }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand ouC.
		IncSearch = { bg = U.darken(C.sky, 0.90, C.base), fg = C.mantle, ctermfg = T.mantle }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch = { bg = C.red, ctermbg = T.red, fg = C.mantle, ctermfg = T.mantle }, -- 'cursearch' highlighting: highlights the current search you're on differently
		SpecialKey = { fg = C.text, ctermfg = T.text }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
		SpellBad = { sp = C.red, style = { "undercurl" } }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = C.yellow, style = { "undercurl" } }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = C.blue, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = C.green, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = C.text, ctermfg = T.text, bg = O.transparent_background and C.none or C.mantle }, -- status line of current window
		StatusLineNC = { fg = C.surface1, ctermfg = T.surface1, bg = O.transparent_background and C.none or C.mantle }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = C.mantle, ctermbg = T.mantle, fg = C.surface1, ctermfg = T.surface1 }, -- tab pages line, not active tab page label
		TabLineFill = { bg = C.black, ctermbg = T.black }, -- tab pages line, where there are no labels
		TabLineSel = { fg = C.green, ctermfg = T.green, bg = C.surface1, ctermbg = T.surface1 }, -- tab pages line, active tab page label
		Title = { fg = C.blue, ctermfg = T.blue, style = { "bold" } }, -- titles for output from ":set all", ":autocmd" etC.
		Visual = { bg = C.surface1, ctermbg = T.surface1, style = { "bold" } }, -- Visual mode selection
		VisualNOS = { bg = C.surface1, ctermbg = T.surface1, style = { "bold" } }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = C.yellow, ctermfg = T.yellow }, -- warning messages
		Whitespace = { fg = C.surface1, ctermfg = T.surface1 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = C.overlay0, ctermbg = T.overlay0 }, -- current match in 'wildmenu' completion
		WinBar = { fg = C.rosewater, ctermfg = T.rosewater },
	}
end

return M
