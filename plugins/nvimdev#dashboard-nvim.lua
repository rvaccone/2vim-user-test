return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
        local dashboard = require('dashboard')

        -- Custom 2VIM dashboard header
        local custom_header = {
            '', '',
            '██████╗ ██╗   ██╗██╗███╗   ███╗',
            '╚═══██║██║   ██║██║████╗ ████║',
            '   ██╔╝██║   ██║██║██╔████╔██║',
            '  ██╔╝ ╚██╗ ██╔╝██║██║╚██╔╝██║',
            ' ██████╗╚████╔╝ ██║██║ ╚═╝ ██║',
            ' ╚═════╝ ╚═══╝  ╚═╝╚═╝     ╚═╝',
            '', ' >_ 2VIM :: Professional Environment ', ''
        }
        dashboard.setup {
            theme = 'hyper',
            config = {
                header = custom_header,
                shortcut = {
                    {
                        desc = 'Update',
                        group = '@property',
                        action = 'Lazy update',
                        key = 'u'
                    }, {
                        icon_hl = '@variable',
                        desc = 'Files',
                        group = 'Label',
                        action = 'Telescope find_files',
                        key = 'f'
                    }
                },
                footer = {}
            }
        }
    end
}
