require("kanagawa").setup({
	theme = "wave",
	background = {
		dark = "dragon",
	},
})

local status, _ = pcall(vim.cmd, "colorscheme kanagawa")
if not status then
	print("Colorscheme not found!")
	return
end
