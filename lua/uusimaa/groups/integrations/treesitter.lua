local M = {}

function M.get(spec)
	local pal = spec.pal
	local syntax = spec.syntax

    -- stylua: ignore start
	return {
		--   TSAttribute           = {}, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
	    ["@boolean"]                = syntax.Boolean, -- Boolean literals: `True` and `False` in Python.
		-- ["@character"] = { fg = "blue"}, -- Character literals: `'a'` in C.
		--   TSCharacterSpecial    = { fg = syntax.Character.fg }, -- Special characters.
		["@comment"]                = syntax.Comment, -- Line comments and block comments.
		["@conditional"]            = syntax.Conditional, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
		["@constant"]               = syntax.Constant, -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
		["@constant.builtin"]       = { fg = pal.cyan },
		--   TSConstMacro          = { fg = spec.syntax.number }, -- Constants defined by macros: `NULL` in C.
		["@constructor"]            = { fg = pal.sun },
		--   TSDebug               = { fg = syntax.Debug.fg }, -- Debugging statements.
		--   TSDefine              = { fg = syntax.Define.fg }, -- Preprocessor #define statements.
		["@error"]                  = syntax.Error , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
		--   TSException           = { fg = syntax.Exception.fg }, -- Exception related keywords: `try`, `except`, `finally` in Python.
		["@field"]                  = { fg = pal.sky }, -- For fields.
		["@float"]                  = syntax.Float, -- Floating-point number literals.
		["@function"]               = { fg = pal.cyan }, -- g.syntax.Function,
		["@function.call"]          = syntax.Function, -- Function calls.
		["@function.builtin"]       = syntax.Function, -- Built-in functions: `print` in Lua.
		--   TSFuncMacro           = {}, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
		--   TSInclude             = { fg = syntax.Include.fg }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
		["@keyword"]                = syntax.Keyword,  -- Keywords that don't fit into other categories.
		["@keyword.function"]       = { fg = syntax.Keyword.fg, gui = "NONE" }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
		--   TSKeywordOperator     = { fg = syntax.Operator.fg }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
		["@keyword.return"]         = syntax.Keyword, -- Keywords like `return` and `yield`.
		--   TSLabel               = { fg = syntax.Label.fg }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
		--   TSMethod              = { fg = syntax.Function.fg, gui = syntax.Function.gui }, -- Method definitions.
		--   TSMethodCall          = { fg = syntax.Function.fg, gui = syntax.Function.gui }, -- Method calls.
		["@namespace"]              = { fg = pal.fg }, -- Identifiers referring to modules and namespaces.
		["@none"]                   = { fg = pal.fg }, -- No highlighting (sets all highlight arguments to `NONE`). This group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
		-- TSNumber              = g.syntax.Number, -- Numeric literals that don't fit into other categories.
		["@operator"]               = syntax.Operator, -- Binary or unary operators: `+`, and also `->` and `*` in C.
		["@parameter"]              = { fg = pal.orange }, -- Parameters of a function.
		--   TSParameterReference  = {}, -- References to parameters of a function.
		--   TSPreProc             = { fg = syntax.PreProc.fg }, -- Preprocessor #if, #else, #endif, etc.
		["@property"]               = { fg = pal.fg }, -- Same as `TSField`.
		["@punctuation.bracket"]    = { fg = pal.lightblue }, -- Brackets, braces, parentheses, etc.
		["@punctuation.delimiter"]    = syntax.Delimiter, --   -- Punctuation delimiters: Periods, commas, semicolons, etc.
		["@punctuation.special"]    = { fg = pal.yellow }, --   -- Special punctuation that doesn't fit into the previous categories.
		["@repeat"]                 = syntax.Repeat, -- Keywords related to loops: `for`, `while`, etc.
		--   TSStorageClass        = { fg = syntax.StorageClass.fg }, -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
		["@string"]                 = syntax.String, -- String literals.
		--   TSStringRegex         = { fg = spec.syntax.regex }, -- Regular expression literals.
		["@string.escape"]          = { fg = pal.cyan }, -- Escape characters within a string: `\n`, `\t`, etc.
		--   TSStringSpecial       = { fg = syntax.Special.fg }, -- Strings with special meaning that don't fit into the previous categories.
		-- TSSymbol              = { fg = "Blue" }, -- Identifiers referring to symbols or atoms.
		["@tag"]                    = syntax.Tag, -- Tags like html tag names.
		["@tag.attribute "]         = { fg = pal.purple }, -- Tags like html tag names.
		["@tag.delimiter"]          = { fg = pal.cyan }, -- Tag delimiters like `<` `>` `/`.
		--   ["@text"]= { fg = spec.fg1 }, -- Non-structured text. Like text in a markup language.
		["@text.title"]             = { fg = pal.fg1, gui = "bold" }, -- Text that is part of a title.
		--   TSStrong              = {}, -- Text to be represented in bold.
		--   TSEmphasis            = {}, -- Text to be represented with emphasis.
		--   TSUnderline           = { fg = syntax.Underlined.fg, gui = syntax.Underlined.gui }, -- Text to be represented with an underline.
		--   TSStrike              = {}, -- Strikethrough text.
		--   TSLiteral             = { fg = syntax.Underlined.fg, gui = syntax.Underlined.gui }, -- Literal or verbatim text.
		--   TSURI                 = { fg = syntax.Underlined.fg, gui = syntax.Underlined.gui }, -- URIs like hyperlinks or email addresses.
		--   TSMath                = {}, -- Math environments like LaTeX's `$ ... $`.
		--   TSTextReference       = {}, -- Footnotes, text references, citations, etc.
		--   TSEnvironment         = {}, -- Text environments of markup languages.
		--   TSEnvironmentName     = {}, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
		--   TSNote                = {}, -- Text representation of an informational note.
		--   TSWarning             = { fg = spec.lsp.warn }, -- Text representation of a warning note.
		["@danger"]                 = syntax.Error, -- Text representation of a danger note.
		["@todo"]                   = { fg = pal.red }, -- Anything that needs extra attention, such as keywords like TODO or FIXME.
		["@type"]                   = { fg = pal.yellow }, -- Type (and class) definitions and annotations.
		["@type.builtin"]           = { fg = pal.yellow }, -- Built-in types: `i32` in Rust.
		-- TSTypeQualifier           = { fg = "Blue" }, -- Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.
		["@type.definition"]        = { fg = pal.fg4 }, -- Type definitions, e.g. `typedef` in C.
		["@variable"]               = { fg = pal.fg }, --   -- Variable names that don't fit into other categories.
		["@variable.builtin"]       = { fg = pal.blue }, -- Variable names defined by the language: `this` or `self` in Javascri
        -- Bash
		["@variable.bash"]          = { fg = pal.yellow },
		["@parameter.bash"]         = { fg = pal.fg },
        -- Go
		["@field.go"]               = { fg = pal.fg },
		-- Lua
		-- ["@constant.lua"]           = { fg = pal.yellow },
		["@field.lua"]              = { fg = pal.lightblue },
		["@constructor.lua"]        = { fg = pal.fg },
        -- CSS
		-- ["@function.css"]           = { fg = pal.cyan },
		-- ["@property.css"]           = { fg = pal.sun },
		-- ["@string.css"]             = { fg = pal.blue },
		-- ["@type.css"]               = { fg = pal.blue },
        -- TypeScript
		-- ["@type.tsx"]               = { fg = pal.yellow },
		-- ["@constructor.tsx"]        = { fg = pal.sun },
	}
	-- stylua: end start
end

return M
