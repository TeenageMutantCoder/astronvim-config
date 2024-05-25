-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.utility.vim-fetch" },
  { import = "astrocommunity.editing-support.undotree" },
  { import = "astrocommunity.editing-support.cutlass-nvim" },
  { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.ruby" },
  { import = "astrocommunity.pack.go" },
}
