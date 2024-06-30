--local lspconfig = require('lspconfig')

return
{
        'neovim/nvim-lspconfig',

        --[[
        lspconfig.lua_ls.setup({
                settings = {
                        Lua = {
                                diagnostics = {
                                        globals = {
                                                'vim'
                                        }
                                }
                        }
                }
        })
        --]]
}
