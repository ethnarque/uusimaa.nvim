local M = {}

function M.get(spec)
	local pal = spec.pal

    -- stylua: ignore start
    return {
        -- Comment
        Comment        = { fg = pal.comment, gui = "italic" }, -- any comment
        -- Constant
        Constant       = { fg = pal.orange }, -- any constant
        String         = { fg = pal.green },
        Character      = { fg = pal.orange }, -- a character constant: 'c', '\n'
        Number         = { fg = pal.orange }, -- a number constant: 234, 0xff
        Boolean        = { fg = pal.purple }, -- a boolean constant: TRUE, false
        Float          = { fg = pal.orange }, -- a floating point constant: 2.3e10
        -- Identifier
        Identifier     = { fg = pal.cyan }, -- any variable name
        Function       = { fg = pal.cyan },
        -- Statement
        Statement      = { fg = pal.red }, -- any statement
        Conditional    = { fg = pal.blue },
        Repeat         = { fg = pal.blue },
        -- Label          = {},
        Operator       = { fg = pal.cyan },
        Keyword        = { fg = pal.blue, gui = "italic" },
        Exception      = { fg = pal.red },
        -- PreProc
        PreProc        = { fg = pal.bg5 }, -- generic Preprocessor
        Include        = { fg = pal.blue }, -- preprocessor #include
        Define         = { fg = pal.bg5 }, -- preprocessor #define
        Macro          = { fg = pal.bg5 }, --same as Define
        -- PreCondit      = { fg = "yellow" }, --	preprocessor #if, #else, #endif, etc.
        -- Type
        Type           = { fg = pal.cyan }, -- int, long, char, etc.
        StorageClass   = { fg = pal.blue }, --	static, register, volatile, etc.
        -- Structure      = { fg = "blue" }, -- struct, union, enum, etc.
        -- Typedef        = {}, -- A typedef
        -- Special
        Special        = { fg = pal.fg }, -- any special symbol
        --   SpecialChar    = { fg = pal.pink }, -- special character in a constant
        Tag            = { fg = pal.red }, -- you can use CTRL-] on this
        Delimiter      = { fg = pal.cyan }, -- character that needs attention
        -- SpecialComment = {}, -- special things inside a comment
        -- Debug          = {}, -- debugging statements
        -- Underlined
        Underlined     = { fg = pal.green, gui = "underline" }, -- text that stands out, HTML links
        -- Ignore
        -- Ignore         = {}, -- left blank, hidden  |hl-Ignore|
        Error          = { fg = pal.danger }, -- any erroneous construct
        -- Todo
        Todo           = { fg = pal.danger }, -- anything that needs extra attention; mostly the
    }
	-- stylua: ignore end
end

return M
