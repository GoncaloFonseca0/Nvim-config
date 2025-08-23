return {
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup({
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      })
    end,
  },
  {
    "rmagatti/session-lens",
    dependencies = { "rmagatti/auto-session", "nvim-telescope/telescope.nvim" },
    config = function()
      require("session-lens").setup({
        load_on_setup = true, -- must be true to initialize conf immediately
      })
      require("telescope").load_extension("session-lens")

      vim.keymap.set("n", "<leader>ls", function()
        require("telescope").extensions["session-lens"].search_session()
      end, { noremap = true, silent = true })
    end,
  },
}

