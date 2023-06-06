local kanagawa_setup, kanagawa = pcall(require, "kanagawa")
if not kanagawa_setup then
	return
end

kanagawa.setup({
	transparent = true,
})

config = function()
	require("kanagawa").load()
end
