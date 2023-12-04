
return {
    'ThePrimeagen/harpoon',
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function ()
        require('harpoon').setup {}
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>m", mark.add_file, { desc = '[M]ark file for Harpoon' } )
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = 'Toggle Harpoon quick m[e]nu' } )
        vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, { desc = 'Select Harpoon file 1' } )
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end, { desc = 'Select Harpoon file 2' } )
        vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, { desc = 'Select Harpoon file 3' } )
        vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, { desc = 'Select Harpoon file 4' } )
    end,
}

