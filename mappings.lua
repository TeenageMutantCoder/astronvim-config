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
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ["<leader>y"] = { name = "Copy" },
    ["<leader>yt"] = {
      function()
        messageText = ''

        if vim.o.clipboard == '' then
          vim.o.clipboard = 'unnamedplus' -- system clipboard
          messageText = "Now using system clipboard..."
        else
          vim.o.clipboard = '' -- neovim clipboard
          messageText = "Now using neovim clipboard..."
        end

        vim.notify(messageText, "info", { title = "Updated active clipboard" })
      end,
      desc = "Toggle clipboard",
    },
    ["<leader>yf"] = { "<cmd>let @*=expand('%:t')<CR>", desc = "Copy filename" },
    ["<leader>yd"] = { "<cmd>let @*=expand('%:p:h')<CR>", desc = "Copy directory path" },
    ["<leader>yp"] = { "<cmd>let @*=expand('%:.')<CR>", desc = "Copy relative file path" },
    ["<leader>yP"] = { "<cmd>let @*=expand('%:p')<CR>", desc = "Copy absolute file path" },

    ["<leader>W"] = { "<cmd>noa w<CR>", desc = "Save without formatting" },
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<leader><ESC>"] = { "<C-\\><C-n>", desc = "Exit terminal mode" },
    ["<leader><BS>"] = { "<C-\\><C-n>", desc = "Exit terminal mode" },
  },
}
