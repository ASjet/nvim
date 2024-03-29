---@see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tailwindcss
return {
  on_setup = function(server)
    server.setup({
      settings = {
        tailwindCSS = {
          classAttributes = { "class", "className", "classList", "ngClass" },
          lint = {
            cssConflict = "warning",
            invalidApply = "error",
            invalidConfigPath = "error",
            invalidScreen = "error",
            invalidTailwindDirective = "error",
            invalidVariant = "error",
            recommendedVariantOrder = "warning",
          },
          validate = true,
        },
      },
    })
  end,
}
