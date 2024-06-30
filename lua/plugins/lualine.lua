local function get_hl(name)
        local ok, hl = pcall(vim.api.nvim_get_hl_by_name, name, true)
        if not ok then
                return
        end

        for _, key in pairs({'foreground', 'background', 'special'}) do
                if hl[key] then
                        hl[key] = string.format('#%06x', hl[key]) end
        end
        return hl
end

return
{
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },

        config = function()
                local conf = {
                        options = {
                                --component_separators = '│',
                                --section_separators = '│',
                                component_separators = '',
                                section_separators = '',
                        },
                        sections = {
                                lualine_a = {},
                                lualine_b = {},
                                lualine_c = {},
                                lualine_x = {},
                                lualine_y = {},
                                lualine_z = {},
                        },
                }

                local colors = {
                        fg = get_hl('Normal').foreground or '#ff0000',
                        bg = get_hl('Normal').background or '#ff0000',
                }

                local betterauto = {
                        normal = { c = {fg = colors.fg, bg = colors.bg} },
                        inactive = { c = {fg = colors.fg, bg = colors.bg} }
                }

                conf.options.theme = betterauto

                local conditions = {
                        select = function(str)
                                if str == '' then return end
                                return string.format('S: %s', str)
                        end,
                }

                local function ins_left(component)
                        table.insert(conf.sections.lualine_c, component)
                end

                local function ins_right(component)
                        table.insert(conf.sections.lualine_x, component)
                end

                ins_left({
                        'diagnostics',
                        sources = { 'nvim_diagnostic' },
                        --color = { bg = colors.fg, fg = colors.bg },
                        sections = { 'error', 'warn' },
                        --diagnostics_color = {
                                --        color_error = { fg = colors.red },
                                --        color_warn = { fg = colors.yellow },
                                --        color_info = { fg = colors.cyan },
                                --},
                        colored = false,
                        always_visible = true,
                })

                ins_left({
                        'filename',
                        color = { bg = colors.bg },
                })

                ins_left({
                        'searchcount',
                        fmt = conditions.select
                })

                ins_left({
                        'selectioncount',
                        fmt = conditions.select
                })

                ins_right({
                        'location',
                        --fmt = function(str)
                        --        local ln, cl = string.match(str, '(%d+)%s*:%s*(%d+)')

                        --        local loc = string.format('Ln %s, Col %-2s', ln, cl)

                        --        return loc
                        --end
                })

                ins_right({
                        'progress',
                })

                --ins_right({
                --        'o:encoding',
                --        --color = { gui = 'bold' },
                --        fmt = string.upper,
                --})

                --ins_right({
                --        'fileformat',
                --        fmt = string.upper,
                --        icons_enabled = false,
                --        --color = { fg = colors.green, gui = 'bold' },
                --})

                --ins_right({
                --        'filetype',
                --        icons_enabled = false,
                --        --color = { gui = 'bold' },
                --})

                ins_right({
                        'branch',
                        icon = '',
                        --color = { gui = 'bold' },
                })

                ins_right({
                        'diff',
                        --symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
                        --diff_color = {
                        --        added = { fg = colors.green },
                        --        modified = { fg = colors.orange },
                        --        removed = { fg = colors.red },
                        --},
                        --cond = conditions.hide_in_width,
                })

                require('lualine').setup(conf)
        end
}
