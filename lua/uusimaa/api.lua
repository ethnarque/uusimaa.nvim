local M = {}

M.get_colors = function()
	local pkg = package.loaded["uusimaa"]

	if pkg then
		return require("uusimaa.palettes").get(pkg.theme)
	end
end

return M
