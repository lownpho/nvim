return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        svelte = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        lua = { "stylua" },
        cpp = { "clang_format" },
        python = { { "isort", "black" } },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500
      }
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function() -- mp stands for "make pretty"
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500
      })
    end, { desc = "Format file or range (in visual mode)" })
  end
}
