return
{
        {
                "projekt0n/github-nvim-theme",
                lazy = true,
                priority = 1000,
                config = function()
                        vim.cmd.colorscheme("github_dark_dimmed")
                end,
        },
        {
                "savq/melange-nvim",
                lazy = true,
                priority = 1000,
                config = function()
                        vim.cmd.colorscheme("melange")
                end,
        },
        {
                'marko-cerovac/material.nvim',
                lazy = false,
                priority = 1000,
                config = function()
                        vim.cmd.colorscheme("material-darker")
                end,
        }
}
