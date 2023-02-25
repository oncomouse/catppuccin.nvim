local M = {}

local virtual_text = O.integrations.native_lsp.virtual_text

function M.get()
	return { -- Personally the default integration is already pretty good
		NoiceCmdline = { fg = C.text, ctermfg = T.text },
		NoiceCmdlineIcon = { fg = C.sky, ctermfg = T.sky, style = virtual_text.information },
		NoiceCmdlineIconSearch = { fg = C.yellow, ctermfg = T.yellow },
		NoiceCmdlinePopup = {
			fg = C.text,
			ctermfg = T.text,
			bg = O.transparent_background and C.none or C.base,
			ctermbg = O.transparent_background and T.none or T.base,
		},
		NoiceCmdlinePopupBorder = { fg = C.lavender, ctermfg = T.lavender },
		NoiceCmdlinePopupBorderSearch = { fg = C.yellow, ctermfg = T.yellow },
		NoiceConfirm = {
			fg = C.text,
			ctermfg = T.text,
			bg = O.transparent_background and C.none or C.base,
			ctermbg = O.transparent_background and T.none or T.base,
		},
		NoiceConfirmBorder = { fg = C.blue, ctermfg = T.blue },
		NoiceMini = { fg = C.text, ctermfg = T.text },
		NoicePopup = {
			fg = C.text,
			ctermfg = T.text,
			bg = O.transparent_background and C.none or C.mantle,
			ctermbg = O.transparent_background and T.none or T.mantle,
		},
		NoicePopupBorder = { link = "FloatBorder" },
		NoicePopupmenu = { link = "Pmenu" },
		NoicePopupmenuBorder = { link = "FloatBorder" },
		NoicePopupmenuMatch = { link = "Special" },
		NoicePopupmenuSelected = { link = "PmenuSel" },
		NoiceScrollbar = { link = "PmenuSbar" },
		NoiceScrollbarThumb = { link = "PmenuThumb" },
		NoiceSplit = {
			fg = C.text,
			ctermfg = T.text,
			bg = O.transparent_background and C.none or C.mantle,
			ctermbg = O.transparent_background and T.none or T.mantle,
		},
		NoiceSplitBorder = { link = "FloatBorder" },
		NoiceVirtualText = { link = "DiagnosticVirtualTextInfo" },
	}
end

return M
