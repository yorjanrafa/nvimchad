local M = {}

M.ui = {
  ------------------------------- base46 -------------------------------------
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { "onedark", "one_light" },
  theme = "onedark", -- default theme
  transparency = false,

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
  },

  telescope = { style = "borderless" }, -- borderless / bordered

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    order = nil,
    modules = nil,
  },


  nvdash = {
    load_on_startup = true,

    header = {
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░",
"░░░█████████████████████████████████░",
"░░▓███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███▓",
"░░▓███▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓███▓",
"░░▓███▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓███▓",
"░░▓███▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓███▓",
"░░▓███▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓███▓",
"░░▓█████████████████████████████████▓",
"░░░░░█████████████████████████████░░░",
"░░░░░░░░░░░░░░░▒███████▒░░░░░░░░░░░░░",
"░░░░░░░░░░░░░▒███████████▒░░░░░░░░░░░",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },

  cheatsheet = {
    theme = "grid", -- simple/grid
    excluded_groups = { "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
  },

  lsp = { signature = true },

}

M.base46 = {
  integrations = {},
}

return vim.tbl_deep_extend("force", M, require "chadrc")


