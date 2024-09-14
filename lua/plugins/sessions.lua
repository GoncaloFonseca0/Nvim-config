return {

  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({

      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Dowloads", "/" },

      session_lens = {
        -- If load_on_setup is false, make sure you use `:SessionSearch` to open the picker as it will initialize everything first
        buftypes_to_ignore = {},
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },

      vim.keymap.set("n", "<leader>ls", require("auto-session.session-lens").search_session, {
        noremap = true,
      }),
    })
  end,
}
