-- Note:
-- The theme you want to use should
-- have "lazy = false" set and all
-- the others should be set to "true".

return {

   {
       'phha/zenburn.nvim',
       name = 'zenburn',
       lazy = true,
       priority = 1000,
       config = function()
           require('zenburn').setup()
       end,
   },

   {
       'maxmx03/solarized.nvim',
       name = 'solarized',
       lazy = true,
       priority = 1000,
       config = function()
           vim.o.background = 'dark'
           vim.cmd.colorscheme('solarized')
       end,
   },

   {
       'dasupradyumna/midnight.nvim',
       name = 'midnight',
       lazy = true,
       priority = 1000,
       config = function()
           vim.cmd.colorscheme('midnight')
       end,
   },

   {
       'shaunsingh/seoul256.nvim',
       name = 'seoul256',
       lazy = true,
       priority = 1000,
       config = function()
           vim.g.seoul256_disable_background = true
           require('seoul256')
       end,
    },

    {
        'rebelot/kanagawa.nvim', -- my fav so far...
        name = 'kanagawa',
        lazy = false,
        priority = 1000,
        config = function()
            local theme = 'wave'
            -- local theme = 'dragon'
            require('kanagawa').load(theme)
        end,
    },

    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = true,
        priority = 1000,
        config = function()
            require('rose-pine').setup()
            vim.cmd.colorscheme('rose-pine-moon')
        end,
    },

}
