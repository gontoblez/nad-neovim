local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
    print("Colorscheme " .. colorscheme .. " not found! Did you install it?")
    return
end
