local autocmd = vim.api.nvim_create_autocmd
local mygroup = vim.api.nvim_create_augroup('CustomAutoCmds', { clear = true })


-- Use different settings when editing non-code text
autocmd('FileType', {
  group = mygroup,
  pattern = { 'markdown', 'text', 'tex', 'bib' },
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.showtabline = 0
    vim.opt_local.laststatus = 0
    vim.opt_local.ruler = false
    vim.opt_local.signcolumn = 'yes:9'
    vim.opt_local.wrap = false
    vim.opt_local.sidescroll = 5
    vim.opt_local.scrolloff = 5
    vim.opt_local.virtualedit = 'all'
    vim.opt_local.colorcolumn = '80'
    vim.opt_local.hlsearch = false
    vim.api.nvim_set_hl(0, '@markup.link.url', {link='Normal'})
  end
})

-- Disable automatic comments on new lines
autocmd('FileType', {
  group = mygroup,
  pattern = '*',
  callback = function()
    vim.opt_local.formatoptions:remove{'c','r','o'}
  end
})

-- Briefly highlight text yanks
autocmd('TextYankPost', {
  group = mygroup,
  pattern = '*',
  callback = function() vim.hl.on_yank{timeout=150} end
})

-- Make the sign column match the colorscheme
autocmd('VimEnter', {
  group = mygroup,
  pattern = '*',
  command = 'highlight clear SignColumn'
})

-- Restore cursor position on buffer read
autocmd('BufReadPost', {
  group = mygroup,
  pattern = '*',
  callback = function()
    local line = vim.fn.line "'\""
    if line > 1 and line <= vim.fn.line '$' then
      vim.cmd "normal! g'\""
    end
  end
})

-- On each save remove any trailing whitespace
autocmd('BufWrite', {
  group = mygroup,
  pattern = '*',
  callback = function()
    local save_cursor = vim.fn.getpos '.'
    vim.cmd [[%s/\s\+$//e]]
    vim.fn.setpos('.', save_cursor)
  end
})

-- On each save remove any blank lines at end of file
autocmd('BufWrite', {
  group = mygroup,
  pattern = { '*.ex', '*.exs', '*.go' },
  command = "call deletebufline('%', prevnonblank('$') + 1, line('$'))"
})
