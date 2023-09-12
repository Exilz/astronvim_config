-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- open Alpha Automatically When No More Buffers
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start() end
      end,
      desc = "Close buffer",
    },
    ["<leader>bC"] = {
      function()
        require("astronvim.utils.buffer").close_all()
        if require("astronvim.utils").is_available "alpha-nvim" then require("alpha").start() end
      end,
      desc = "Force close buffer",
    },
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>rco"] = { ":%s/<C-r><C-w>/", desc = "Replace all occurrences under cursor" },
    ["<leader>rvo"] = { ":%s//<C-r>/", desc = "Replace all occurrences of visual selection" },
    -- telescope overrides
    ["<leader>fp"] = { "<cmd>Telescope resume<cr>", desc = "Resume previous telescope search" },
    -- git overrides
    ["<leader>gh"] = { "<cmd>OpenInGHFile<cr>", desc = "Open file in GitHub" },
    -- splits overrides
    ["-"] = { "<cmd>split<cr>", desc = "Horizontal Split" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
