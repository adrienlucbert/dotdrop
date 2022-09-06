-- This dotfile is managed using dotdrop

return function()
    -- local map = require('utils').map

    require('trouble').setup {
    use_diagnostic_signs = true,
    }

    -- map('n', '<leader>l', ':LspTroubleToggle<CR>')
end
