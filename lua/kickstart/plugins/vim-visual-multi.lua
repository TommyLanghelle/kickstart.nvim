return {
    'mg979/vim-visual-multi',
    lazy = false,
    event = 'VeryLazy',
    config = function()
        vim.g.VM_default_mappings_disabled = 1
        vim.g.VM_maps = {
        ['Find Under'] = '<C-d>',
        ['Find Subword Under'] = '<C-d>',
        ['Add Cursor Down'] = '<C-j>',
        ['Add Cursor Up'] = '<C-k>',
        ['Add Cursor At Pos'] = '<C-p>',
        ['Undo'] = '<C-u>',
        ['Redo'] = '<C-r>',
        }
    end,   
}