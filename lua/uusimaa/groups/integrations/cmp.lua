local M = {}

function M.get(spec)
	local pal = spec.pal
	local editor = spec.editor

    -- stylua: ignore start
	return {
		CmpItemAbbr             = { fg = editor.Pmenu.fg },
        CmpItemAbbrDeprecated   = { fg = pal.comment, gui="strikethrough" },
		CmpItemAbbrMatch        = { fg = pal.cyan },
		CmpItemAbbrMatchFuzzy   = { fg = pal.cyan },
		CmpItemKindClass        = { fg = pal.yellow },
		CmpItemKindField        = { fg = pal.sky },
		CmpItemKindFunction     = { fg = pal.purple },
		CmpItemKindKeyword      = { fg = pal.blue },
		CmpItemKindSnippet      = { fg = pal.red },
		CmpItemKindText         = { fg = pal.green },
		CmpItemKindVariable     = { fg = pal.fg4 },
	}
	-- stylua: end start
end

return M
