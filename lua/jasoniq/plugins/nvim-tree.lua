-- local nvimtreeOpts = {
--   filters = { dotfiles = true },
--   disable_netrw = true,
--   hijack_cursor = true,
--   sync_root_with_cwd = true,
--   update_focused_file = {
--     enable = true,
--     update_root = false,
--   },
--   view = {
--     width = 30,
--     preserve_window_proportions = true,
--   },
--   renderer = {
--     root_folder_label = false,
--     highlight_git = true,
--     indent_markers = { enable = true },
--     icons = {
--       glyphs = {
--         default = "󰈚",
--         folder = {
--           default = "",
--           empty = "",
--           empty_open = "",
--           open = "",
--           symlink = "",
--         },
--         git = { unmerged = "" },
--       },
--     },
--   },
-- }

return {
  -- and a directory file explorer that is easy to use
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    -- update the file explorer with nice icons
    -- https://github.com/nvim-tree/nvim-web-devicons
     "nvim-tree/nvim-web-devicons",
  },
  --cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  --opts = nvimtreeOpts,
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      -- filters = {
      --   custom = { ".DS_Store" },
      -- },
      git = {
        ignore = false,
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    --keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    -- keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    -- keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    -- keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

    keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
    keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })
  end
}
