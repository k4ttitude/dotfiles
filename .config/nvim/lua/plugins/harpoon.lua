local plugin = "harpoon"

return {
  "ThePrimeagen/harpoon",
  enabled = true,
  default = true,

  config = function(_, opts)
    require(plugin).setup(opts)
    local mark = require(plugin .. ".mark")
    local ui = require(plugin .. ".ui")

    -- Harpoon marked files 1 through 4.
    vim.keymap.set("n", "<leader>h1", function()
      ui.nav_file(1)
    end, { desc = "Harpoon: 1" })
    vim.keymap.set("n", "<leader>h2", function()
      ui.nav_file(2)
    end, { desc = "Harpoon: 2" })
    vim.keymap.set("n", "<leader>h3", function()
      ui.nav_file(3)
    end, { desc = "Harpoon: 3" })
    vim.keymap.set("n", "<leader>h4", function()
      ui.nav_file(4)
    end, { desc = "Harpoon: 4" })

    -- Harpoon next and previous.
    vim.keymap.set("n", "<leader>hn", function()
      ui.nav_next()
    end, { desc = "Harpoon: Next" })
    vim.keymap.set("n", "<leader>hp", function()
      ui.nav_prev()
    end, { desc = "Harpoon: Prev" })

    -- Harpoon user interface.
    vim.keymap.set("n", "<leader>he", ui.toggle_quick_menu, { desc = "Harpoon: Edit" })
    vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "Harpoon: Add" })
  end,
}
