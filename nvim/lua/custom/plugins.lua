local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    lazy = true,
    event = "InsertEnter",
    config = function()
      require("custom.configs.copilot").config()
    end,
  },
  {
    "olrtg/nvim-emmet",
    config = function()
      vim.keymap.set({ "n", "v" }, "<leader>rw", require("nvim-emmet").wrap_with_abbreviation)
    end,
  },
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- configuration goes here
      -- injector = { ---@type table<lc.lang, lc.inject>
      --   ["python3"] = {
      --     before = true
      --   },
      --   ["cpp"] = {
      --     before = { "#include <bits/stdc++.h>", "using namespace std;" },
      --     after = "int main() {}",
      --   },
      --   ["java"] = {
      --     before = "import java.util.*;",
      --   },
      -- }
    },
    lazy = false,
  },
  {
    "easymotion/vim-easymotion",
    lazy = false,
    config = function()
      vim.api.nvim_set_keymap("n", "<Leader>s", "<Plug>(easymotion-s2)", { noremap = true })
    end,
  },
  {
    "themaxmarchuk/tailwindcss-colors.nvim",
    lazy = true,
    config = function()
      require("tailwindcss-colors").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    -- opts = overrides.treesitter,
    opts = {
      ensure_installed = {
        "vim",
        "html",
        "css",
        "javascript",
        "typescript",
        "cpp",
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "mg979/vim-visual-multi",
    branch = "master",
    lazy = false,
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-g>",
      }
    end,
  },
  {
    "dharmx/telescope-media.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          media = {
            backend = "ueberzug", -- image/gif backend
            backend_options = {
              viu = {
                move = true, -- GIF preview
              },
            },
            -- on_confirm_single = canned.single.copy_path,
            -- on_confirm_muliple = canned.multiple.bulk_copy,
            cache_path = vim.fn.stdpath "cache" .. "/media",
          },
        },
      }
      require("telescope").load_extension "media"
    end,
  },
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
