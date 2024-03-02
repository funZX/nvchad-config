local plugins = {

  { 
    "mfussenegger/nvim-dap-python",

    config = function(_, opts)
      require("core.utils").load_mappings "dap_python"
    end,
  },


  {
    "mfussenegger/nvim-dap",

    init = function()
      require("core.utils").load_mappings "dap"
    end,

    opts = {},
    config = function(_, opts)
      require("dap-python").setup("~/.local/venv/debugpy/bin/python", {test_runner = "unittest"})
      require("custom.configs.dap")
    end,    
  },


  {
    "rcarriga/nvim-dap-ui",
    init = function()
      require("core.utils").load_mappings "dapui"
    end,

    opts = {},
    config = function(_, opts)
      require("dapui").setup(opts)
    end,
  },



  {
    "folke/neodev.nvim",
    opts = {
      library = {
        plugins = { "nvim-dap-ui", "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
        types = true,
      },
    },
    config = function(_, opts)
      require("neodev").setup(opts)
    end,
  },


  {
    "folke/trouble.nvim",

    init = function()
      require("core.utils").load_mappings "trouble"
    end,
  },


  "folke/neoconf.nvim",
  {
    "neovim/nvim-lspconfig",

    init = function()
      vim.opt.expandtab = true
      vim.opt.shiftwidth = 4
      vim.opt.smartindent = true
      vim.opt.tabstop = 4
      vim.opt.softtabstop = 4
    end,

    opts = {},
    config = function(_, opts)
        require "neoconf".setup()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
  
}

return plugins