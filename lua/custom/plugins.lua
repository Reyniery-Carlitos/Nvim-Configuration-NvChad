local plugins = {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({})
    end,
  }
  , {
    "windwp/nvim-ts-autotag"
    , ft = {
      "html"
      , "xml"
      , "javascriptreact"
      , "typescriptreact"
      , "vue"
      , "javascript"
      , "typescript"
      , "vue"
      , "astro"
    }
    , config = function ()
      require("nvim-ts-autotag").setup()
    end
  }
}

return plugins
