local lsplines_setup, lsp_lines = pcall(require, "lsp_lines")
if not lsplines_setup then
	return
end

lsp_lines.setup()
