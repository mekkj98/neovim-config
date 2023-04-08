-- Themes


-- MyTheme --

function MyThemeSetup(color)
  color = color or "rose-pine"
  vim.g.dark_theme = color
  vim.g.light_theme = color
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- One dark
-- MyThemeSetup('onelight')

-- rose pine
MyThemeSetup("rose-pine")
