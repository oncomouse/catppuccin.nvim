local C = require("catppuccin.palettes").get_palette()
local O = require("catppuccin").options

local dirname_color = O.integrations.barbecue.dim_dirname and C.overlay1 or C.text

local M = {
	normal = { fg = C.text, ctermfg = T.text, bg = "none" },

	ellipsis = { fg = C.overlay1, ctermfg = T.overlay1 },
	separator = { fg = C.overlay1, ctermfg = T.overlay1 },
	modified = { fg = C.peach, ctermfg = T.peach },

	dirname = { fg = dirname_color },
	basename = { fg = C.text, ctermfg = T.text, bold = true },
	context = { fg = C.text, ctermfg = T.text },

	-- Same keys as navic
	context_file = { fg = C.blue, ctermfg = T.blue },
	context_module = { fg = C.blue, ctermfg = T.blue },
	context_namespace = { fg = C.blue, ctermfg = T.blue },
	context_package = { fg = C.blue, ctermfg = T.blue },
	context_class = { fg = C.yellow, ctermfg = T.yellow },
	context_method = { fg = C.blue, ctermfg = T.blue },
	context_property = { fg = C.green, ctermfg = T.green },
	context_field = { fg = C.green, ctermfg = T.green },
	context_constructor = { fg = C.blue, ctermfg = T.blue },
	context_enum = { fg = C.green, ctermfg = T.green },
	context_interface = { fg = C.yellow, ctermfg = T.yellow },
	context_function = { fg = C.blue, ctermfg = T.blue },
	context_variable = { fg = C.flamingo, ctermfg = T.flamingo },
	context_constant = { fg = C.peach, ctermfg = T.peach },
	context_string = { fg = C.green, ctermfg = T.green },
	context_number = { fg = C.peach, ctermfg = T.peach },
	context_boolean = { fg = C.peach, ctermfg = T.peach },
	context_array = { fg = C.blue, ctermfg = T.blue },
	context_object = { fg = C.blue, ctermfg = T.blue },
	context_key = { fg = C.flamingo, ctermfg = T.flamingo },
	context_null = { fg = C.peach, ctermfg = T.peach },
	context_enum_member = { fg = C.red, ctermfg = T.red },
	context_struct = { fg = C.blue, ctermfg = T.blue },
	context_event = { fg = C.blue, ctermfg = T.blue },
	context_operator = { fg = C.blue, ctermfg = T.blue },
	context_type_parameter = { fg = C.blue, ctermfg = T.blue },
}

return M
