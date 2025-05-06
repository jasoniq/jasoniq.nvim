# jasoniq.nvim
My personal neovim config and plugins

# Installation

## [lazy.nvim](https://github.com/folke/lazy.nvim)

Set the following

 - `<leader>` key

Then add the plugin

```lua
{
    "jasoniq/jasoniq.nvim"
    import = "jasoniq.plugins"
    config = function()
        require("jasoniq.core")
    end
}
```
