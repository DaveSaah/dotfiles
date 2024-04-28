return {
  { "folke/tokyonight.nvim", enabled = false },
  { "echasnovski/mini.surround", enabled = false },
  { "echasnovski/mini.starter", enabled = false },
  { "navarasu/onedark.nvim", enabled = false },
  {
    "bergercookie/asm-lsp",
    event = { "VeryLazy" },
    ft = { "asm" },
    filetypes = { "asm", "s", "S" },
    enabled = false,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    event = { "VimEnter" },
    enabled = false,
  },
  {
    "rebelot/kanagawa.nvim",
    event = { "VimEnter" },
    enabled = false,
  },
}
