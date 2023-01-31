local M = {}

function M.get()
	local hi = {
		IndentBlanklineChar = { fg = C.surface0, ctermfg = T.surface0 },
		IndentBlanklineContextChar = { fg = C.text, ctermfg = T.text },
		IndentBlanklineContextStart = { sp = C.text, style = { "underline" } },
	}

	if O.integrations.indent_blankline.colored_indent_levels then
		hi["IndentBlanklineIndent6"] = { blend = 0, fg = C.yellow, ctermfg = T.yellow }
		hi["IndentBlanklineIndent5"] = { blend = 0, fg = C.red, ctermfg = T.red }
		hi["IndentBlanklineIndent4"] = { blend = 0, fg = C.teal, ctermfg = T.teal }
		hi["IndentBlanklineIndent3"] = { blend = 0, fg = C.peach, ctermfg = T.peach }
		hi["IndentBlanklineIndent2"] = { blend = 0, fg = C.blue, ctermfg = T.blue }
		hi["IndentBlanklineIndent1"] = { blend = 0, fg = C.pink, ctermfg = T.pink }
	end

	return hi
end

return M
