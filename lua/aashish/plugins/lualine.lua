local status, lualine = pcall(require, "lualine")
if not status then
    return
end

-- Color table for highlights
-- stylua: ignore

-- Now don't forget to initialize lualine
lualine.setup()
