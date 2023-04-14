return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
  },
  {
    "github/copilot.vim",
    config = function()
    end,
    event = "User AstroFile",
    cmd = { "Copilot" },
  },
  {
    "Mofiqul/dracula.nvim",
    config = function()
    end,
  },
}
