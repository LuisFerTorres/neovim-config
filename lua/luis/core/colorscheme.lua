local status, _ = pcall(vim.cmd, "colorscheme off")
if not status then 
        print("Colorscheme not found!")
        return
end
