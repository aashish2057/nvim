require("nordic").setup({
	transparent_bg = true,
})

local status, _ = pcall(vim.cmd, "colorscheme nordic")
if not status then
	print("Colorscheme not found!")
	return
end
