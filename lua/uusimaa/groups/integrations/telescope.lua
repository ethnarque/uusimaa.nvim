local M = {}

function M.get(spec)
	local pal = spec.pal

  -- stylua: ignore start
  return {
    TelescopeNormal     = { bg = pal.bg, fg = "grey" },
    TelescopeMatching   = { bg = "NONE", fg = pal.lightblue },
    TelescopeBorder     = { fg = pal.sky },
    TelescopeSelection  = { bg = pal.select, fg = pal.fg, gui="bold" },
  }
	-- stylua: ignore end
end

return M
