
return {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function ()
        local harpoon = require("harpoon")
        harpoon:setup()

        vim.keymap.set("n", "<leader>m", function() harpoon.list():append() end, { desc = '[M]ark file for Harpoon' } )
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Toggle Harpoon quick m[e]nu' } )
        vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = 'Select Harpoon file 1' } )
        vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, { desc = 'Select Harpoon file 2' } )
        vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, { desc = 'Select Harpoon file 3' } )
        vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end, { desc = 'Select Harpoon file 4' } )
    end,
}

