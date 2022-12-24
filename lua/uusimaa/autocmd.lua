local M = {}

local lib = require "uusimaa.lib"

M.init = function()
	local uusimaaGroup = vim.api.nvim_create_augroup("UusimaaGroup", { clear = true })

	vim.api.nvim_create_autocmd("FocusGained,FocusLost", {
		group = uusimaaGroup,
		pattern = "*",
		callback = function()
			lib.auto_theme_switcher()
		end,
	})

	vim.api.nvim_create_autocmd("BufRead", {
		group = uusimaaGroup,
		pattern = "*",
		callback = function()
			lib.auto_theme_switcher()
		end,
	})

	vim.api.nvim_create_user_command("UusimaaSwitchTheme", function()
		lib.switch_theme()
	end, { nargs = 0 })
end

return M
