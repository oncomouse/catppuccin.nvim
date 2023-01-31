local C = require("catppuccin.palettes").get_palette()
local O = require("catppuccin").options
local catppuccin = {}

local transparent_bg = O.transparent_background and "NONE" or C.mantle

catppuccin.normal = {
	a = { bg = C.blue, ctermbg = T.blue, fg = C.mantle, ctermfg = T.mantle, gui = "bold" },
	b = { bg = C.surface1, ctermbg = T.surface1, fg = C.blue, ctermfg = T.blue },
	c = { bg = transparent_bg, fg = C.text, ctermfg = T.text },
}

catppuccin.insert = {
	a = { bg = C.green, ctermbg = T.green, fg = C.base, ctermfg = T.base, gui = "bold" },
	b = { bg = C.surface1, ctermbg = T.surface1, fg = C.teal, ctermfg = T.teal },
}

catppuccin.terminal = {
	a = { bg = C.green, ctermbg = T.green, fg = C.base, ctermfg = T.base, gui = "bold" },
	b = { bg = C.surface1, ctermbg = T.surface1, fg = C.teal, ctermfg = T.teal },
}

catppuccin.command = {
	a = { bg = C.peach, ctermbg = T.peach, fg = C.base, ctermfg = T.base, gui = "bold" },
	b = { bg = C.surface1, ctermbg = T.surface1, fg = C.peach, ctermfg = T.peach },
}

catppuccin.visual = {
	a = { bg = C.mauve, ctermbg = T.mauve, fg = C.base, ctermfg = T.base, gui = "bold" },
	b = { bg = C.surface1, ctermbg = T.surface1, fg = C.mauve, ctermfg = T.mauve },
}

catppuccin.replace = {
	a = { bg = C.red, ctermbg = T.red, fg = C.base, ctermfg = T.base, gui = "bold" },
	b = { bg = C.surface1, ctermbg = T.surface1, fg = C.red, ctermfg = T.red },
}

catppuccin.inactive = {
	a = { bg = transparent_bg, fg = C.blue, ctermfg = T.blue },
	b = { bg = transparent_bg, fg = C.surface1, ctermfg = T.surface1, gui = "bold" },
	c = { bg = transparent_bg, fg = C.overlay0, ctermfg = T.overlay0 },
}

return catppuccin
