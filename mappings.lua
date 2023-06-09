-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
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
    ["<leader>bx"] = {
      function() vim.cmd ":e!" end,
      desc = "Reload from last saved",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["ga"] = { "<Plug>(EasyAlign)", desc = "EasyAlign" },
    -- keyboard language mappings
    ["<leader>led"] = { "<cmd>set keymap=<cr>", desc = "Default" },
    ["<leader>ler"] = { "<cmd>set keymap=russian-typograph<cr>", desc = "Russian Typograph" },
    ["<leader>lea"] = { "<cmd>set keymap=arabic<cr>", desc = "Arabic" },
    ["<leader>le"] = { name = "Keyboard language" },
  },
  v = {
    ["ga"] = { "<Plug>(EasyAlign)", desc = "EasyAlign" },
  },
  t = {
    -- setting a mapping to false will disable it
    ["<leader>q"] = { "<C-\\><C-n>", desc = "Escape terminal mode" },
  },
}
