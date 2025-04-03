return {
    'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local status_ok, alpha = pcall(require, 'alpha')
        if not status_ok then
            return
        end

        local function footer()
            local plugins_count = vim.fn.len(vim.fn.globpath('~/.local/share/nvim/lazy', '*', 0, 1))
            local datetime = os.date '  %d-%B-%Y   %H:%M:%S'
            local version = vim.version()
            local nvim_version_info = '   v' .. version.major .. '.' .. version.minor .. '.' .. version.patch
            return datetime .. '   Plugins ' .. plugins_count .. nvim_version_info
        end
        local dashboard = require 'alpha.themes.dashboard'

        dashboard.section.header.val = {
            [[███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
            [[████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
            [[██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
            [[██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
            [[██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
            [[╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
            [[             ⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[             ⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣦⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[             ⠀⠀⠀⠀⠀⠀⢿⣿⠟⠋⠉⠀⠀⠀⠀⠉⠑⠢⣄⡀⠀⠀⠀⠀]],
            [[             ⠀⠀⠀⠀⠀⢠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣦⡀]],
            [[             ⠀⣀⠀⠀⢀⡏⠀⢀⣴⣶⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⠇]],
            [[             ⣾⣿⣿⣦⣼⡀⠀⢺⣿⣿⡿⠃⠀⠀⠀⠀⣠⣤⣄⠀⠀⠈⡿⠋⠀]],
            [[             ⢿⣿⣿⣿⣿⣇⠀⠤⠌⠁⠀⡀⢲⡶⠄⢸⣏⣿⣿⠀⠀⠀⡇⠀⠀]],
            [[             ⠈⢿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠈⠉⠓⠂⠀⠙⠛⠛⠠⠀⡸⠁⠀⠀]],
            [[             ⠀⠀⠻⣿⣿⣿⣿⣿⣿⣷⣦⣄⣀⠀⠀⠀⠀⠑⠀⣠⠞⠁⠀⠀⠀]],
            [[             ⠀⠀⠀⢸⡏⠉⠛⠛⠛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀]],
            [[             ⠀⠀⠀⠸⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⢿⣿⣿⣿⣿⡄⠀⠀⠀⠀]],
            [[             ⠀⠀⠀⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⡀⠀⠀⠀]],
            [[             ⠀⠀⠀⢸⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡇⠀⠀⠀]],
            [[             ⠀⠀⠀⢸⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡟⠻⠿⠟⠀⠀⠀⠀]],
            [[             ⠀⠀⠀⠀⣿⣿⣿⣿⣶⠶⠤⠤⢤⣶⣾⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
            [[             ⠀⠀⠀⠀⠹⣿⣿⣿⠏⠀⠀⠀⠈⢿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀]],
            [[             ⠀⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        }
        -- dashboard.section.header.val = {
        --     [[                     _..._                                                      ]],
        --     [[                  .-'_..._''.                                     _______      ]],
        --     [[         .--.   .' .'      '.\    .                               \  ___ `'.   ]],
        --     [[         |__|  / .'             .'|                                ' |--.\  \  ]],
        --     [[.-,.--.  .--. . '              <  |                      .-,.--.   | |    \  ' ]],
        --     [[|  .-. | |  | | |               | |               __     |  .-. |  | |     |  ']],
        --     [[| |  | | |  | | |               | | .'''-.     .:--.'.   | |  | |  | |     |  |]],
        --     [[| |  | | |  | . '               | |/.'''. \   / |   \ |  | |  | |  | |     ' .' ]],
        --     [[| |  '-  |  |  \ '.          .  |  /    | |   `" __ | |  | |  '-   | |___.' /' ]],
        --     [[| |      |__|   '. `._____.-'/  | |     | |    .'.''| |  | |      /_______.'/  ]],
        --     [[| |               `-.______ /   | |     | |   / /   | |_ | |      \_______|/   ]],
        --     [[|_|                        `    | '.    | '.  \ \._,\ '/ |_|                   ]],
        --     [[                                '---'   '---'  `--'  `"                        ]],
        -- }
        -- dashboard.section.header.val = {
        -- --     [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
        -- --     [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
        -- --     [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
        -- --     [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
        -- --     [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
        -- --     [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
        -- -- }
        dashboard.section.buttons.val = {
            dashboard.button('<leader>   f', '   Find Files', ':Telescope find_files <CR>'),
            dashboard.button('<leader> e n', '   New File', ':ene <BAR> startinsert <CR>'),
            dashboard.button('<leader> f r', '  Recent Files', ':Telescope oldfiles <CR>'),
            -- dashboard.button('<leader> f t', '   Find Text', ':Telescope live_grep <CR>'),
            -- dashboard.button('<leader>   u', '   Lazy sync', ':Lazy sync <CR>'),
            dashboard.button('<leader> c f', '   Configuration', ':e ~/.config/nvim/lua/ <CR>'),
            dashboard.button('<leader>   q', ' 󰈆  Quit Neovim', ':qa<CR>'),
        }

        dashboard.section.footer.val = footer()
        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)
    end,
}
