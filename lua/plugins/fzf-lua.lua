return {
  "ibhagwan/fzf-lua",
  dependencies = { "echasnovski/mini.icons" },

  opts = {},

  keys = {
    { "<leader>ff", "<CMD>FzfLua files<CR>", desc = "[F]ind in [F]iles" },
    { 
      "<leader>fc", 
      function() 
        require("fzf-lua").files({cwd = vim.fn.stdpath("config")}) 
      end, 
      desc = "[F]ind in [C]onfig" 
    },
    { "<leader>fk", "<CMD>FzfLua keymaps<CR>", desc = "[F]ind in [K]eymaps" },
    { "<leader>fr", "<CMD>FzfLua resume<CR>", desc = "[F]ind [R]esume" },
    { "<leader><leader>", "<CMD>FzfLua buffers<CR>", desc = "Open Buffers" },
    { "<leader>fw", "<CMD>FzfLua grep_cword<CR>", desc = "[F]ind current [W]ord" },
    { "<leader>fW", "<CMD>FzfLua grep_cWORD<CR>", desc = "[F]ind current [W]ORD" },
    { "<leader>fg", "<CMD>FzfLua live_grep<CR>", desc = "Grep in working directory" },
    { "<leader>f/", "<CMD>FzfLua lgrep_curbuf<CR>", desc = "[/] Grep in current document" },
    { "<leader>fh", "<CMD>FzfLua help_tags<CR>", desc = "[F]ind NeoVim [H]elp" },

    { "<leader>fdd", "<CMD>FzfLua diagnostics_document<CR>", desc = "[F]ind [D]iagnostics in [D]ocument" },
    { "<leader>fdw", "<CMD>FzfLua diagnostics_workspace<CR>", desc = "[F]ind [D]iagnostics in [W]orkspace" },
    { "<leader>fs", "<CMD>FzfLua lsp_workspace_symbols<CR>", desc = "[F]ind [S]ymbols in Workspace" },
    { "<leader>ca", "<CMD>FzfLua lsp_code_actions<CR>", desc = "[C]ode [A]ctions" },
  }
}
