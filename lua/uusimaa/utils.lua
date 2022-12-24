local fmt = string.format

local M = {}

M.set_hl = function(highlights)
	local function validate(input)
		return input and input or "NONE"
	end

	for name, opts in pairs(highlights) do
		vim.cmd(
			fmt(
				"highlight %s guibg=%s guifg=%s gui=%s guisp=%s",
				name,
				validate(opts.bg),
				validate(opts.fg),
				validate(opts.gui) or validate "NONE",
				validate(opts.sp) or validate "NONE"
			)
		)
	end
end

M.generate_spec = function(pal)
	local spec = {}

	spec.pal = pal

	-- [[
	-- Base highlight groups are used accross other groups
    -- stylua: ignore start
	spec.editor = require("uusimaa.groups.editor").get(spec)
	spec.syntax = require("uusimaa.groups.syntax").get(spec)
    spec.ts     = require("uusimaa.groups.integrations.treesitter").get(spec)
	-- ]]
    -- stylua: end start
	return spec
end

return M
