local M = {}

local lib = require "uusimaa.lib"

function M.setup(opts)
	local pkg = package.loaded["uusimaa"]
	local config = { theme = "system" }

	if opts ~= nil then
		for k, v in pairs(opts) do
			config[k] = v
		end
	end

	if not pkg then
		pkg = config
	end

	lib.generate_au()
	lib.set_theme(config)
end

return M
