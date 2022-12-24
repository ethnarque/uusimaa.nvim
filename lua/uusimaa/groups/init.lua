local M = {}

function M.get()
	return {
		require "uusimaa.groups.editor",
		require "uusimaa.groups.syntax",
		require "uusimaa.groups.integrations.treesitter",
		require "uusimaa.groups.integrations.cmp",
		require "uusimaa.groups.integrations.diagnostics",
		require "uusimaa.groups.integrations.git_signs",
		require "uusimaa.groups.integrations.indent",
		require "uusimaa.groups.integrations.neotree",
		require "uusimaa.groups.integrations.telescope",
	}
end

return M
