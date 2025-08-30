-- Modes
-- normal = 'n'
-- insert = 'i'
-- visual = 'v'
-- visual_block = 'x'
-- term = 't'
-- command = 'c'


local function map(m, k, v)
  vim.api.nvim_set_keymap(m, k, v, { noremap = true, silent = true })
end


-- remap space as leader key
map('', '<Space>', '<Nop>')
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- disable arrow keys
map('n', '<Up>', '<Nop>')
map('n', '<Down>', '<Nop>')
map('n', '<Left>', '<Nop>')
map('n', '<Right>', '<Nop>')
map('i', '<Up>', '<Nop>')
map('i', '<Down>', '<Nop>')
map('i', '<Left>', '<Nop>')
map('i', '<Right>', '<Nop>')


--- NORMAL ---
-- save the file
map('n', '<Esc>', '<Cmd>w<CR>')

-- navigate horizontally more easily
map('n', 'L', '$')
map('n', 'H', '^')

-- cursor doesn't move when joining lines
map('n', 'J', "mzJ`z")

-- next/prev cursor position
map('n', '<C-i>', '<C-i>zz')
map('n', '<C-o>', '<C-o>zz')

-- navigate vertically by 1/2 page
map('n', '<C-u>', '<C-u>zz')
map('n', '<C-d>', '<C-d>zz')

-- keep screen centred during "/" searching
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

-- search for word under the cursor
map('n', '*', '*zz')
map('n', '#', '#zz')

-- don't copy deleted single characters
map('n', 'x', '"_x')

-- don't copy when deleting
map('n', '<leader>d', "\"_d")
map('v', '<leader>d', "\"_d")

-- use leader key to yank into system clipboard
map('n', '<leader>y', "\"+y")
map('v', '<leader>Y', "\"+y")
map('n', '<leader>Y', "\"+Y")

-- toggle search highlights
map('n', '<leader>thl', '<Cmd>set hls!<CR>')

-- substitute the word currently under the cursor
map('n', '<leader>su', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- surround a word in double quotes
map('n', "<leader>\"", "viw<Esc>a\"<Esc>bi\"<Esc>lel")

-- easily add newlines
map('n', '<leader>o', 'o<Esc>')
map('n', '<leader>O', 'O<Esc>')

-- visually select all text
map('n', '<C-a>' ,'G$vgg0')

-- split window management
map('n', '<leader>sv', '<C-w>v') -- split window vertically
map('n', '<leader>sh', '<C-w>s') -- split window horizontally
map('n', '<leader>s=', '<C-w>=') -- make split windows equal width & height
map('n', '<leader>sx', '<Cmd>close<CR>') -- close current split

-- split window navigation
map('n', '<leader>h', '<C-w>h')
map('n', '<leader>j', '<C-w>j')
map('n', '<leader>k', '<C-w>k')
map('n', '<leader>l', '<C-w>l')

-- resize split windows using arrow keys
map('n', '<C-Up>', ':resize +3<CR>')
map('n', '<C-Down>', ':resize -1<CR>')
map('n', '<C-Left>', ':vertical resize +3<CR>')
map('n', '<C-Right>', ':vertical resize -1<CR>')

-- navigate buffers
map('n', '<Tab>', '<Cmd>bnext<CR>')
map('n', '<S-Tab>', '<Cmd>bprevious<CR>')
map('n', '<leader>x', '<Cmd>bdelete<CR>')


--- INSERT ---
-- mash these to leave insert mode
map('i', 'jk', '<Esc>')
map('i', 'kj', '<Esc>')
-- nullify pressing escape
map('i', '<Esc>', '<Nop>')


--- VISUAL ---
-- for indenting text
map('v', '<', '<gv')
map('v', '>', '>gv')
-- move text up and down
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")
-- for pasting over text with "p"
map('v', 'p', '"_dP')
-- exit visual mode by pressing Ctrl-c
map('v', '<Esc>', '<Nop>')
-- surround with double quotes???
--map("v", "<leader>\"", ":s/\%V\(.*\)\%V/"\1"/")
-- navigate horizontally in visual mode
map('v', 'L', '$h')
map('v', 'H', '^')


--- VISUAL BLOCK ---


--- TERMINAL ---
-- better terminal navigation
--vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-N><C-w>h', { silent = true })
--vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-N><C-w>j', { silent = true })
--vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-N><C-w>k', { silent = true })
--vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-N><C-w>l', { silent = true })



-- just as a fun experiment
--vim.api.nvim_set_keymap('n', '<Esc>', 'j<Esc>', { noremap = false })
