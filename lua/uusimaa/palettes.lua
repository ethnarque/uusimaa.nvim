local M = {}
-- stylua: ignore start
local colors = {
    ["day"] = {
        bg          = "#F5F5F5",
        fg          = "#252629",

        status_line = "#DFE0E0",
        scrollbar   = "#313235",
        accent      = "#E9EAEA",
        cursor_line = "#EAEAEA",
        separator   = "#A1A5A5",
        indent      = "#CBCDCD",

        select      = "#B5C3EA",
        comment     = "#A1A5A5",

        error       = "#C54744",
        warn        = "#E79F1C",
        hint        = "#486DBE",
        info        = "#7D90C6",

        red         = "#D7575E",
        orange      = "#F8AE72",
        sun         = "#E79F1C",
        yellow      = "#E5AE0C",
        green       = "#5EA070",
        cyan        = "#689DB4",
        lightblue   = "#7D90C6",
        blue        = "#486DBE",
        purple      = "#9A72B3",
        violet      = "#B9A1F7",
    },
    ["night"] = {
        bg          = "#252629",
        fg          = "#DEE4F5",

        status_line = "#1C1D1F",
        scrollbar   = "#313235",
        accent      = "#1C1D1F",
        cursor_line = "#313235",
        separator   = "#555658",
        indent      = "#37383B",

        select      = "#454547",
        comment     = "#6D6E70",

        error       = "#D16D6B",
        warn        = "#F8C972",
        hint        = "#7A9AE0",
        info        = "#B5C3EA",

        red         = "#F07178",
        orange      = "#F8AE72",
        sun         = "#F8C972",
        yellow      = "#FFE28B",
        green       = "#8CC59C",
        cyan        = "#86CAE8",
        lightblue   = "#B5C3EA",
        blue        = "#7A9AE0",
        purple      = "#E5BDFE",
        violet      = "#B9A1F7",
    },
}
-- stylua: end start


M.get = function(name)
	return colors[name]
end

M.get_all = function ()
    return colors
end
return M
