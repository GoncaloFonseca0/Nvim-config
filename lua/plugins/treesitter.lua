return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed={'c', 'cpp','lua','rust', "python", 'javascript', 'typescript', 'html', 'css', 'json', 'yaml', 'bash', 'vim'}
      })
    end
  }
}
