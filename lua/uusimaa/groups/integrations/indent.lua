local M = {}

function M.get(spec)
	local pal = spec.pal

  -- stylua: ignore start
  return {
    IndentBlanklineChar        = { fg = pal.indent },
    IndentBlanklineContextChar = { fg = pal.indent },
    IndentBlanklineSpaceChar   = { fg = pal.indent },
  }
	-- stylua: ignore end
end

return M
