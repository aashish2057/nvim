local catppuccin_setup, catppuccin = pcall(require, "catppuccin")
if not catppuccin_setup then
	return
end

catppuccin.setup({
	transparent_background = true,
})
config = function()
	require("catppuccin").load()
end
