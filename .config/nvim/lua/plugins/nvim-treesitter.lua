return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "astro",
    })
    -- vim.filetype.add({
    --   extention = {
    --     astro = "astro"
    --   }
    -- })
  end,
}
