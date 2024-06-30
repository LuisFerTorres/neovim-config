return
{
        'ThePrimeagen/harpoon',
        dependencies = 'nvim-lua/plenary.nvim',

        config = function()
                --require('harpoon').setup()
                local harpoon = require('harpoon')
                local keymap = vim.keymap

                harpoon.setup()

                --keymap.set('n', '<leader>a', function() require('harpoon.mark').add_file() end)
                --keymap.set('n', '<C-e>', function() require('harpoon.ui').toggle_quick_menu() end)

                --keymap.set('n', '<C-j>', function() require('harpoon.ui').nav_file(1) end)
                --keymap.set('n', '<C-k>', function() require('harpoon.ui').nav_file(2) end)
                --keymap.set('n', '<C-l>', function() require('harpoon.ui').nav_file(3) end)
                --keymap.set('n', '<C-;>', function() require('harpoon.ui').nav_file(4) end)
        end
}
