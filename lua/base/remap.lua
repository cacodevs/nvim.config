vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)


-- keep cursor in middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set('n', '<leader>i', '<cmd>bnext<CR>', { desc = '[N]ext buffer' })
vim.keymap.set('n', '<leader>o', '<cmd>bprevious<CR>', { desc = '[P]revious buffer' })

-- vim.keymap.set('n', '<leader>;', '<cmd>Texplore<CR>', {desc='Open tab explorer'})

