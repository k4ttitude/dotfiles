require("k4ttitude.keymap")
if vim.g.vscode then
  -- vscode
else
  require("k4ttitude.packer")
  require("k4ttitude.set")
end
