return {
  -- Your existing themes
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_style = "soft"
      vim.g.everforest_better_performance = 1
      vim.g.everforest_background = "soft"
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "main",
      dark_variant = "main",
      disable_background = false,
      disable_float_background = false,
      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },
    },
  },

  -- NEW THEMES - 6 additional soft, warm, dark colorschemes

  -- 1. Nordic - Nord-based but warmer and softer
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      bold_keywords = false,
      italic_comments = true,
      transparent = {
        bg = false,
        float = false,
      },
      bright_border = false,
      reduced_blue = true, -- Less blue for warmth
      cursorline = {
        bold = false,
        bold_number = true,
        theme = "dark",
        blend = 0.85,
      },
    },
  },

  -- 2. Ashen - Warm, muted with red/orange tones
  {
    "ficcdaf/ashen.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style_presets = {
        bold_functions = false,
        italic_comments = true,
      },
      transparent = false,
    },
  },

  -- 3. Melange - Warm colorscheme with excellent contrast
  {
    "savq/melange-nvim",
    lazy = false,
    priority = 1000,
  },

  -- 4. GitHub Dark Dimmed - Soft, professional dark theme
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        options = {
          compile_path = vim.fn.stdpath("cache") .. "/github-theme",
          compile_file_suffix = "_compiled",
          hide_end_of_buffer = true,
          hide_nc_statusline = true,
          transparent = false,
          terminal_colors = true,
          dim_inactive = false,
          module_default = true,
          styles = {
            comments = "italic",
            keywords = "NONE",
            types = "NONE",
            functions = "NONE",
            variables = "NONE",
          },
          inverse = {
            match_paren = false,
            visual = false,
            search = false,
          },
        },
      })
    end,
  },

  -- 5. Bamboo - Warm green-based theme
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "vulgaris", -- or 'multiplex'
      toggle_style_key = nil,
      toggle_style_list = { "vulgaris", "multiplex" },
      transparent = false,
      dim_inactive = false,
      term_colors = true,
      ending_tildes = false,
      cmp_itemkind_reverse = false,
      code_style = {
        comments = { italic = true },
        conditionals = {},
        keywords = {},
        functions = {},
        namespaces = { italic = true },
        parameters = { italic = true },
        strings = {},
        variables = {},
      },
      lualine = {
        transparent = false,
      },
    },
  },

  -- 6. Kanagawa - Japanese-inspired warm theme
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = false },
      statementStyle = { bold = false },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      colors = {
        palette = {},
        theme = {
          wave = {},
          lotus = {},
          dragon = {},
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      theme = "wave", -- Load "wave" theme when 'background' option is not set
      background = {
        dark = "wave", -- try "dragon" for darker variant
        light = "lotus",
      },
    },
  },

  -- Configure LazyVim to use one as default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa", -- Set your preferred default here
    },
  },
}
