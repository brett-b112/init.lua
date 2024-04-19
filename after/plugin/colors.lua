function ColorMyPencils(color)
	color = color or "catppuccin-frappe"
    -- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
	vim.cmd.colorscheme(color)
    -- This sets the cursor highlight to be an underline
	vim.api.nvim_set_hl(0, 'CursorLine', { underline = true })
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
ColorMyPencils()
