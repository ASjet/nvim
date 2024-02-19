return {
    -- A snazzy buffer line (with tabpage integration) for Neovim built using lua
    ---@see https://github.com/akinsho/bufferline.nvim
    'akinsho/bufferline.nvim',
    version = "*",
    event = 'BufReadPre',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function(LazyPlugin, opts)
        vim.opt.termguicolors = true
        vim.opt.mousemoveevent = true
        require("bufferline").setup({
            options = {
                hover = {
                    enabled = true,
                    delay = 50,
                    reveal = {"close"},
                }
            }
        })
		vim.keymap.set("n", "[", ":BufferLineCyclePrev<CR>")
		vim.keymap.set("n", "]", ":BufferLineCycleNext<CR>")
    end,
}
