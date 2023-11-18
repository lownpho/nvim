return {
  "echasnovski/mini.nvim",
  version = "*",

  config = function ()
    require("mini.surround").setup() -- add surround stuff
    require("mini.comment").setup() -- commenting stuff
    require("mini.pairs").setup() -- add matching parenthesis (not sure of this)
  end
}

