local M = {}

function M.get(spec)
	local pal = spec.pal

	return {
		GitSignsAdd = { fg = pal.green },
		GitSignsChange = { fg = pal.orange },
		GitSignsDelete = { fg = pal.red },
	}
end

return M
