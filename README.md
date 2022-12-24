# Uusimaa 

## Quickstart

```lua
require("uusimaa").setup()
```

## Development

```lua
-- To reload in dev development
-- reload.lua

package.loaded["feline"] = nil
package.loaded["uusimaa"] = nil
package.loaded["uusimaa.api"] = nil
package.loaded["uusimaa.lib"] = nil
package.loaded["uusimaa.autocmd"] = nil
package.loaded["uusimaa.utils"] = nil
package.loaded["uusimaa.palettes"] = nil
package.loaded["uusimaa.groups"] = nil
package.loaded["uusimaa.groups.editor"] = nil
package.loaded["uusimaa.groups.syntax"] = nil
package.loaded["uusimaa.groups.integrations.cmp"] = nil
package.loaded["uusimaa.groups.integrations.diagnostics"] = nil
package.loaded["uusimaa.groups.integrations.git_signs"] = nil
package.loaded["uusimaa.groups.integrations.indent"] = nil
package.loaded["uusimaa.groups.integrations.neotree"] = nil
package.loaded["uusimaa.groups.integrations.telescope"] = nil
package.loaded["uusimaa.groups.integrations.treesitter"] = nil

require("uusimaa").setup { theme = "night" }

-- source the file or source % if inside buffer with reload.lua file
```
