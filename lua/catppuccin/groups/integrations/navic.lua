local M = {}
-- Backwards compatibility
if type(O.integrations.navic) == "boolean" then O.integrations.navic = { custom_bg = C.mantle, ctermbg = T.mantle } end

local background = O.integrations.navic.custom_bg and O.integrations.navic.custom_bg or C.none

function M.get()
	return {
		NavicIconsFile = { fg = C.blue, ctermfg = T.blue, bg = background },
		NavicIconsModule = { fg = C.blue, ctermfg = T.blue, bg = background },
		NavicIconsNamespace = { fg = C.blue, ctermfg = T.blue, bg = background },
		NavicIconsPackage = { fg = C.blue, ctermfg = T.blue, bg = background },
		NavicIconsClass = { fg = C.yellow, ctermfg = T.yellow, bg = background },
		NavicIconsMethod = { fg = C.blue, ctermfg = T.blue, bg = background },
		NavicIconsProperty = { fg = C.green, ctermfg = T.green, bg = background },
		NavicIconsField = { fg = C.green, ctermfg = T.green, bg = background },
		NavicIconsConstructor = { fg = C.blue, ctermfg = T.blue, bg = background },
		NavicIconsEnum = { fg = C.green, ctermfg = T.green, bg = background },
		NavicIconsInterface = { fg = C.yellow, ctermfg = T.yellow, bg = background },
		NavicIconsFunction = { fg = C.blue, ctermfg = T.blue, bg = background },
		NavicIconsVariable = { fg = C.flamingo, ctermfg = T.flamingo, bg = background },
		NavicIconsConstant = { fg = C.peach, ctermfg = T.peach, bg = background },
		NavicIconsString = { fg = C.green, ctermfg = T.green, style = O.styles.strings, bg = background },
		NavicIconsNumber = { fg = C.peach, ctermfg = T.peach, bg = background },
		NavicIconsBoolean = { fg = C.peach, ctermfg = T.peach, bg = background },
		NavicIconsArray = { fg = C.peach, ctermfg = T.peach, bg = background },
		NavicIconsObject = { fg = C.peach, ctermfg = T.peach, bg = background },
		NavicIconsKey = { fg = C.pink, ctermfg = T.pink, style = O.styles.keywords, bg = background },
		NavicIconsNull = { fg = C.peach, ctermfg = T.peach, bg = background },
		NavicIconsEnumMember = { fg = C.red, ctermfg = T.red, bg = background },
		NavicIconsStruct = { fg = C.blue, ctermfg = T.blue, bg = background },
		NavicIconsEvent = { fg = C.blue, ctermfg = T.blue, bg = background },
		NavicIconsOperator = { fg = C.sky, ctermfg = T.sky, bg = background },
		NavicIconsTypeParameter = { fg = C.blue, ctermfg = T.blue, bg = background },
		NavicText = { fg = C.teal, ctermfg = T.teal, bg = background },
		NavicSeparator = { fg = C.text, ctermfg = T.text, bg = background },
	}
end

return M
