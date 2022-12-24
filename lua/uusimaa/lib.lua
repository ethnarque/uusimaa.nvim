local M = {}

local integrations = require "uusimaa.integrations"
local groups = require "uusimaa.groups"
local palettes = require "uusimaa.palettes"
local utils = require "uusimaa.utils"

M.set_settings = function()
	--
end

M.refresh_integrations = function()
	local pkg = package.loaded

	if pkg["feline"] ~= nil then
		pkg["feline"].colors = integrations.feline()
	end
end

M.generate_hl_groups = function(opts)
	local pkg = package.loaded["uusimaa"]
	local colors = palettes.get(opts.theme)
	local spec = utils.generate_spec(colors)

	for _, v in ipairs(groups.get()) do
		utils.set_hl(v.get(spec))
	end

	if opts.theme then
		pkg.theme = opts.theme
	end
	pkg.palettes = palettes.get_all()
end

M.set_theme = function(opts)
	if opts.theme == "system" then
		M.set_theme_auto()
	else
		M.generate_hl_groups(opts)
	end
end

M.switch_theme = function()
	if package.loaded["uusimaa"].theme == "night" then
		M.generate_hl_groups { theme = "day" }
	else
		M.generate_hl_groups { theme = "night" }
	end
	M.refresh_integrations()
end

M.get_system_appereance = function()
	local cmd
	local dark_mode
	local sys = vim.loop.os_uname().sysname

	if sys == "Darwin" then
		cmd = 'echom system("defaults read -g AppleInterfaceStyle") == "Dark\n"'
		dark_mode = vim.cmd(cmd)

		if not dark_mode then
			return "light"
		else
			return "dark"
		end
	end
end

M.set_theme_auto = function()
	local cmd
	local dark_mode
	local sys = vim.loop.os_uname().sysname

	if sys == "Darwin" then
		cmd = "defaults read -g AppleInterfaceStyle 2>/dev/null"
		dark_mode = os.execute(cmd) == 0

		if not dark_mode then
			M.generate_hl_groups { theme = "day" }
		else
			M.generate_hl_groups { theme = "night" }
		end
	end
	M.refresh_integrations()
end

M.generate_au = function()
	local uusimaaGroup = vim.api.nvim_create_augroup("UusimaaGroup", { clear = true })

	vim.api.nvim_create_autocmd("FocusGained,FocusLost", {
		group = uusimaaGroup,
		pattern = "*",
		callback = function()
			M.set_theme_auto()
		end,
	})

	vim.api.nvim_create_autocmd("BufRead", {
		group = uusimaaGroup,
		pattern = "*",
		callback = function()
			M.set_theme_auto()
		end,
	})

	vim.api.nvim_create_user_command("UusimaaSwitchTheme", function()
		M.switch_theme()
	end, { nargs = 0 })
end

return M
