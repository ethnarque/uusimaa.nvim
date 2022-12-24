local M = {}

function M.get(spec)
	local pal = spec.pal

    -- stylua: ignore start
    return {
        NeoTreeBufferNumber         = {},  -- The buffer number shown in the buffers source.
        NeoTreeCursorLine           = { bg = pal.cursor_line },  -- |hl-CursorLine| override in Neo-tree window.
        NeoTreeDimText              = {},  -- Greyed out text used in various places.
        NeoTreeDirectoryIcon        = { fg = pal.blue },  -- Directory icon.
        NeoTreeDirectoryName        = { fg = pal.blue }, -- Directory name.
        NeoTreeDotfile              = {}, -- Used for icons and names when dotfiles are filtered.
        NeoTreeFileIcon             = {}, -- File icon, when not overridden by devicons.
        NeoTreeFileName             = {}, -- File name, when not overwritten by another status.
        NeoTreeFileNameOpened       = {}, -- File name when the file is open. Not used yet.
        NeoTreeFilterTerm           = {}, -- The filter term, as displayed in the root node.
        NeoTreeFloatBorder          = {}, -- The border for pop-up windows.
        NeoTreeFloatTitle           = {}, -- Used for the title text of pop-ups when the border-style is set to another style than "NC". This is derived from NeoTreeFloatBorder.
        NeoTreeGitAdded             = { fg = pal.green }, -- File name when the git status is added.
        NeoTreeGitConflict          = { fg = pal.red }, -- File name when the git status is conflict.
        NeoTreeGitDeleted           = {},  -- File name when the git status is deleted.
        NeoTreeGitIgnored           = { fg = pal.comment }, -- File name when the git status is ignored.
        NeoTreeGitModified          = { fg = pal.orange }, -- File name when the git status is modified.
        NeoTreeGitUnstaged          = {}, -- Used for git unstaged symbol.
        NeoTreeGitUntracked         = {}, -- File name when the git status is untracked.
        NeoTreeGitStaged            = {}, -- Used for git staged symbol.
        NeoTreeHiddenByName         = {}, -- Used for icons and names when `hide_by_name` is used.
        NeoTreeIndentMarker         = { fg = pal.indent },  --The style of indentation markers (guides). By default, the "Normal" highlight is used.
        NeoTreeExpander             = {},  --Used for collapsed/expanded icons.
        NeoTreeNormal               = { bg = pal.accent, fg = pal.fg3  },  --|hl-Normal| override in Neo-tree window.
        NeoTreeNormalNC             = {}, --|hl-NormalNC| override in Neo-tree window.
        NeoTreeSignColumn           = {}, --|hl-SignColumn| override in Neo-tree window.
        NeoTreeStatusLine           = {}, --|hl-StatusLine| override in Neo-tree window.
        NeoTreeStatusLineNC         = {}, --|hl-StatusLineNC| override in Neo-tree window.
        NeoTreeVertSplit            = {}, --|hl-VertSplit| override in Neo-tree window.
        NeoTreeWinSeparator         = { fg = pal.bg },  --|hl-WinSeparator| override in Neo-tree window.
        NeoTreeEndOfBuffer          = { fg = pal.accent },  --|hl-EndOfBuffer| override in Neo-tree window.
        NeoTreeRootName             = {}, --The name of the root node.
        NeoTreeSymbolicLinkTarget   = {}, --Symbolic link target.
        NeoTreeTitleBar             = {}, --Used for the title bar of pop-ups, when the border-style is set to "NC". This is derived from NeoTreeFloatBorder.
        NeoTreeWindowsHidden        = {}  --Used for icons and names that are hidden on Windows.

        -- NeoTreeGitConflict      = { fg = pal.red },     -- File name when the git status is conflict.
        -- NeoTreeGitDeleted       = { fg = pal.red },     -- File name when the git status is deleted.
        -- NeoTreeGitIgnored       = {},     -- File name when the git status is ignored.
        -- NeoTreeGitModified      = { fg = pal.orange },     -- File name when the git status is modified.
        -- NeoTreeGitUnstaged      = { fg = pal.purple },     -- Used for git unstaged symbol.
        -- NeoTreeGitUntracked     = {},     -- File name when the git status is untracked.
        -- NeoTreeGitStaged        = { fg = pal.green },     -- Used for git staged symbol.
    }
	-- stylua: ignore end
end

return M
