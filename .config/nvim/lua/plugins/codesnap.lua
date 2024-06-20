return {
  "mistricky/codesnap.nvim",
  build = "make",
  keys = {
    { "<leader>cs", "<cmd>CodeSnap<cr>", mode = "x", desc = "Snapshot and copy into clipboard" },
  },
  opts = {
    watermark = "",
    has_line_number = true,
  },
}
