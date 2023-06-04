local nordic_setup, nordic = pcall(require, "nordic")
if not nordic_setup then
	return
end

nordic.setup({
	transparent_bg = true,
})

config = function()
	vim.cmd("colorscheme nordic")
end
