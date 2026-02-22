return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    math.randomseed(os.time())

    local alpha = require "alpha"
    local dashboard = require "alpha.themes.dashboard"
    local footer_quotes = require "footer-quotes"

    dashboard.section.header.val = {
      [[                                                 ]],
      [[   _________                             /\      ]],
      [[  /   _____/____    _____   _____ ___.__.)/_____ ]],
      [[  \_____  \\__  \  /     \ /     <   |  |/  ___/ ]],
      [[  /        \/ __ \|  Y Y  \  Y Y  \___  |\___ \  ]],
      [[ /_______  (____  /__|_|  /__|_|  / ____/____  > ]],
      [[         \/     \/      \/      \/\/         \/  ]],
      [[    ___________    .___.__  __                   ]],
      [[    \_   _____/  __| _/|__|/  |_  ___________    ]],
      [[     |    __)_  / __ | |  \   __\/  _ \_  __ \   ]],
      [[     |        \/ /_/ | |  ||  | (  <_> )  | \/   ]],
      [[    /_______  /\____ | |__||__|  \____/|__|      ]],
      [[            \/      \/                           ]],
      [[                                                 ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("r", "Recently used files", ":Telescope oldfiles <CR>"),
      dashboard.button("f", "Find file", ":Telescope find_files <CR>"),
      dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("t", "Find text", ":Telescope live_grep <CR>"),
      dashboard.button("c", "Configuration", ":e ~/.config/nvim/init.lua<CR>"),
      dashboard.button("q", "Quit Neovim", ":qa<CR>"),
    }

    -- New quote section (placed above buttons via layout)
    dashboard.section.quote = {
      type = "text",
      val = footer_quotes.random_wrapped(),
      opts = {
        position = "center",
        hl = "Comment",
      },
    }

    -- Reorder layout: header -> quote -> buttons
    dashboard.config.layout = {
      { type = "padding", val = 1 },
      dashboard.section.header,
      { type = "padding", val = 1 },
      dashboard.section.quote,
      { type = "padding", val = 1 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
    }

    -- Refresh quote whenever Alpha opens (and when re-opened)
    vim.api.nvim_create_autocmd("User", {
      pattern = "AlphaReady",
      callback = function()
        dashboard.section.quote.val = footer_quotes.random_wrapped()
        pcall(vim.cmd.AlphaRedraw)
      end,
    })

    alpha.setup(dashboard.config)
  end,
}
