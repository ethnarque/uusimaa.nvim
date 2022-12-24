local M = {}

function M.get(spec)
	local pal = spec.pal

  -- stylua: ignore start
    local e = {
        ColorColumn     = {}, -- Used for the columns set with 'colorcolumn'.
        Conceal	        = {}, -- Placeholder characters substituted for concealed text (see 'conceallevel').
        CurSearch       = {}, -- Used for highlighting a search pattern under the cursor (see 'hlsearch').
        Cursor	        = {}, -- Character under the cursor.
        lCursor	        = {}, -- Character under the cursor when |language-mapping| is used (see 'guicursor').
        CursorIM	    = {}, -- Like Cursor, but used when in IME mode. *CursorIM*
        CursorColumn    = {}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine      = { bg = pal.cursor_line }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory       = {}, -- Directory names (and other special names in listings).
        DiffAdd         = { fg = pal.green }, -- Diff mode: Added line. |diff.txt|
        DiffChange      = {}, -- Diff mode: Changed line. |diff.txt|
        DiffDelete      = { fg = pal.red }, -- Diff mode: Deleted line. |diff.txt|
        DiffText        = {}, -- Diff mode: Changed text within a changed line. |diff.txt|
        TermCursor      = {}, -- Cursor in a focused terminal.
        TermCursorNC    = {}, -- Cursor in an unfocused terminal.
        ErrorMsg        = { bg = "NONE", fg = pal.error }, -- Error messages on the command line.
        WinSeparator    = { fg = pal.separator }, -- Separators between window splits.
        Folded          = {}, -- Line used for closed folds.
        FoldColumn      = {}, -- 'foldcolumn'
        SignColumn      = {}, -- Column where |signs| are displayed.
        IncSearch       = { bg = pal.orange, fg = pal.bg }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c".
        Substitute      = { bg = pal.red, fg = pal.bg }, -- |:substitute| replacement text highlighting.
        LineNr          = { fg = pal.separator }, -- 	Line number for ":number" and ":#" commands, and when 'number'
        LineNrAbove     = { fg = pal.separator }, -- Line number for when the 'relativenumber' option is set, above the cursor line.
        LineNrBelow     = { fg = pal.separator }, -- Line number for when the 'relativenumber' option is set, below the cursor line.
        CursorLineNr    = { fg = pal.fg }, -- Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or is "both", for the cursor line.
        CursorLineSign  = {}, --	Like SignColumn when 'cursorline' is set for the cursor line.
        CursorLineFold  = {}, --	Like FoldColumn when 'cursorline' is set for the cursor line.
        MatchParen      = { fg = pal.orange, gui = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg         = {}, -- 'showmode' message (e.g., "-- INSERT --").
        MsgArea         = {}, -- Area for messages and cmdline.
        MsgSeparator    = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'.
        MoreMsg         = {}, -- |more-prompt|
        NonText         = { bg = "NONE", fg = pal.hint },	-- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal          = { bg = pal.bg, fg = pal.fg }, -- Normal Text
        NormalFloat     = {}, -- Normal text in floating windows.
        NormalNC        = {}, -- Normal text in non-current windows.
        Question        = { bg = "NONE" , fg = pal.sky }, -- |hit-enter| prompt and yes/no questions.
        Pmenu           = { bg = pal.accent, fg = pal.fg }, -- Popup Menu normal item.
        PmenuSel        = { bg = pal.select, gui = "bold" }, -- Popup menu selected item.
        PmenuSbar       = { bg = pal.scrollbar }, --	Popup menu: scrollbar.
        PmenuThumb      = { bg = pal.status_line }, --	Popup menu: Thumb of the scrollbar.
        QuickFixLine    = {}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search          = { bg = pal.red }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        SpecialKey      = {}, --Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad        = { fg = pal.red }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap        = {}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal      = {}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare       = {}, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        StatusLine      = { bg = pal.accent, fg = pal.bg }, -- column where |signs| are displayed
        StatusLineNC    = {}, -- Status lines of not-current windows. Note: If this is equal to "StatusLine", Vim will use "^^^" in the status line of the current window.
        TabLine         = {}, --	Tab pages line, not active tab page label.
        TabLineFill     = {}, -- Tab pages line, where there are no labels.
        TabLineSel      = {}, --	Tab pages line, active tab page label.
        Title           = { fg = pal.cyan, gui = "bold"  },
        Visual	        = { bg = pal.select }, -- Visual mode selection.
        VisualNOS       = { bg = pal.select }, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg      = { bg = "NONE", fg = pal.warn }, -- Warning messages.
        Whitespace      = {}, -- "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
        WildMenu        = {}, -- Current match in 'wildmenu' completion.
        WinBar          = {}, -- Window bar of current window.
        WinBarNC        = {}, -- Window bar of not-current windows.
        --
        FloatBorder     = { fg = pal.fg },

        Menu            = {}, -- Current font, background and foreground colors of the menus. Also used for the toolbar. Applicable highlight arguments: font, guibg, guifg.
        Scrollbar       = {}, -- Current background and foreground of the main window's scrollbars. Applicable highlight arguments: guibg, guifg.
        Tooltip         = {}, -- Current font, background and foreground of the tooltips. Applicable highlight arguments: font, guibg, guifg.
    }
    e.NormalFloat = { bg = e.Normal.bg } -- Normal text in floating windows
    e.EndOfBuffer = { fg = e.Normal.bg } -- filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
	-- stylua: ignore end
	return e
end

return M
