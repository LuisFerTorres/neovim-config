local opt = vim.opt

--[[ Extra ]]--

vim.g.have_nerd_font = true

vim.diagnostic.config({
        signs = {
                text = {
                        [vim.diagnostic.severity.ERROR] = '█',
                        [vim.diagnostic.severity.WARN] = '█',
                        [vim.diagnostic.severity.INFO] = '█',
                        [vim.diagnostic.severity.HINT] = '█',
                        --[vim.diagnostic.severity.ERROR] = '⊗',
                        --[vim.diagnostic.severity.WARN] = '█',
                        --[vim.diagnostic.severity.INFO] = 'i',
                        --[vim.diagnostic.severity.HINT] = '?',
                }
        }
})

--[[ 2 Moving around ]]--

opt.startofline = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

--[[ 4 Displaying text ]]--

--Doesnt't work well
--opt.scroll = 8
opt.scrolloff = 10
opt.sidescrolloff = 15
opt.wrap = false
opt.number = true
opt.relativenumber = true

--[[ 5 Syntax ]]--

opt.hlsearch = true
opt.termguicolors = true
opt.cursorline = true

--[[ 6 Multiple windows ]]--

opt.laststatus = 3
opt.splitbelow = true
opt.splitright = true

--[[ 9 Selecting text ]]--

opt.mouse = "a"

--[[ 10 Messages and info]]--

--vim.cmd(":set shortmess+=S")
--vim.cmd(":set shortmess+=F")
opt.shortmess = "ltToOCSF"
opt.showmode = false
opt.showcmd = false

--[[ 11 Selecting text ]]--

opt.clipboard = "unnamedplus"

--[[ 12 Selecting text ]]--

opt.undofile = true
opt.updatetime = 250

--[[ 13 Selecting text ]]--

local tabsize = 8

opt.tabstop = tabsize
opt.shiftwidth = tabsize
opt.softtabstop = tabsize
opt.expandtab = true

--[[ 13 Selecting text ]]--

opt.timeoutlen = 300

--[[ 24 Various ]]--

opt.virtualedit = "block"
opt.signcolumn = "yes"
