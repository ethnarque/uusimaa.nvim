local M = {}

function M.get(spec)
	local pal = spec.pal
	local editor = spec.editor

	local c = {
		error = editor.ErrorMsg,
		hint = editor.NonText,
		info = editor.Question,
		warn = editor.WarningMsg,
	}

    -- stylua: ignore start
    return {
        DiagnosticError             = c.error, -- c.error, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticWarn              = c.warn, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticInfo              = c.info, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticHint              = c.hint, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticVirtualTextError  = { bg = c.error.fg, fg = pal.bg }, -- Used for "Error" diagnostic virtual text.
        DiagnosticVirtualTextWarn   = { bg = c.warn.fg, fg = pal.bg }, -- Used for "Warn" diagnostic virtual text.
        DiagnosticVirtualTextInfo   = { bg = c.info.fg, fg = pal.bg }, -- Used for "Info" diagnostic virtual text.
        DiagnosticVirtualTextHint   = { bg = c.hint.fg, fg = pal.bg } , -- Used for "Hint" diagnostic virtual text.
        DiagnosticUnderlineError    = { gui = "undercurl", sp=c.error.fg }, -- Used to underline "Error" diagnostics.
        DiagnosticUnderlineWarn     = { gui = "undercurl", sp=c.warn.fg }, -- Used to underline "Warn" diagnostics.
        DiagnosticUnderlineInfo     = { gui = "undercurl", sp=c.info.fg }, -- Used to underline "Info" diagnostics.
        DiagnosticUnderlineHint     = { fg = pal.comment, gui = "undercurl", sp=c.hint.fg }, -- Used to underline "Hint" diagnostics.
        DiagnosticFloatingError     = c.error, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
        DiagnosticFloatingWarn      = c.warn, -- Used to color "Warn" diagnostic messages in diagnostics float.
        DiagnosticFloatingInfo      = c.info, -- Used to color "Info" diagnostic messages in diagnostics float.
        DiagnosticFloatingHint      = c.hint, -- Used to color "Hint" diagnostic messages in diagnostics float.
        DiagnosticSignError         = c.error, -- Used for "Error" signs in sign column.
        DiagnosticSignWarn          = c.warn, -- Used for "Warn" signs in sign column.
        DiagnosticSignInfo          = c.info, -- Used for "Info" signs in sign column.
        DiagnosticSignHint          = c.hint, -- Used for "Hint" signs in sign column.
    }
	-- stylua: ignore end
end

return M
