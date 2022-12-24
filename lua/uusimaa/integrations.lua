local M = {}

local api = require "uusimaa.api"

M.feline = function()
	local pal = api.get_colors()

	return {
		bg = pal.status_line,
		fg = pal.fg,

		black = pal.bg,
		grey = pal.indent,
		red = pal.red,
		orange = pal.orange,
		yellow = pal.yellow,
		green = pal.green,
		skyblue = pal.cyan,
		cyan = pal.cyan,
		blue = pal.blue,
		magenta = pal.magenta,
		purple = pal.purple,
		violet = pal.viole,

		error = pal.error,
		warn = pal.warn,
		hint = pal.hint,
		info = pal.info,
	}
end

return M
