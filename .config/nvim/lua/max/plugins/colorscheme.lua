local colors = 'kanagawa'


if colors == 'zenburn' then

    return {
        'phha/zenburn.nvim',
        name = 'zenburn',
        config = function()
            require('zenburn').setup()
        end
    }

elseif colors == 'solarized' then

    return {
        'maxmx03/solarized.nvim',
        name = 'solarized',
        config = function()
            vim.o.background = 'dark'
            vim.cmd.colorscheme('solarized')
        end
    }

elseif colors == 'midnight' then

    return {
        'dasupradyumna/midnight.nvim',
        name = 'midnight',
        config = function()
            vim.cmd.colorscheme('midnight')
        end
    }

elseif colors == 'seoul256' then

    return {
        'shaunsingh/seoul256.nvim',
        name = 'seoul256',
        config = function()
            vim.g.seoul256_disable_background = true
            require('seoul256')
        end
    }

elseif colors == 'kanagawa' then

    return {
        'rebelot/kanagawa.nvim', -- my fav so far...
        name = 'kanagawa',
        config = function()
            local theme = 'wave'
            -- local theme = 'dragon'
            require('kanagawa').load(theme)
        end
    }

elseif colors == 'rose-pine' then

    return {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require('rose-pine').setup()
            vim.cmd.colorscheme('rose-pine-moon')
        end
    }

else
    return {}
end
