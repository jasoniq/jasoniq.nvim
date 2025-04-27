# jasoniq.nvim
My personal neovim config and plugins

# Installation

## [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "jasoniq/jasoniq.nvim"
    import = "jasoniq.plugins"
    config = function()
        require("jasoniq.core")
    end
}
```
