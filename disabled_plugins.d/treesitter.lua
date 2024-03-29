return {
    {
        -- Provide a simple and easy way to use the interface for tree-sitter in Neovim
        -- Provide some basic functionality such as highlighting based on it
        ---@see https://github.com/nvim-treesitter/nvim-treesitter
        "nvim-treesitter/nvim-treesitter",
        cmd = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,
        config = function()
            require("nvim-treesitter.configs").setup({
                sync_install = false,
                ensure_installed = {
                    "c",
                    "cpp",
                    "go",
                    "rust",
                    "python",
                    "lua",
                    "bash",
                    "json",
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                    disable = function(_, bufnr) -- Disable in large buffers
                        return vim.api.nvim_buf_line_count(bufnr) > 10000
                    end,
                },
                incremental_selection = {
                    enable = false,
                    keymaps = {
                        init_selection = "<CR>",
                        node_incremental = "<CR>",
                        node_decremental = "<BS>",
                        scope_incremental = "<TAB>",
                    },
                },
                -- enable =
                indent = {
                    enable = true,
                },
                rainbow = {
                    enable = true,
                    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
                    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                    max_file_lines = 10000, -- Do not enable for files with more than n lines, int
                    colors = {
                    "#95ca60",
                    "#ee6985",
                    "#D6A760",
                    "#7794f4",
                    "#b38bf5",
                    "#7cc7fe",
                    },
                    -- termcolors = { } -- table of colour name strings
                },
                -- https://github.com/windwp/nvim-ts-autotag
                autotag = {
                    enable = true,
                },
                -- https://github.com/RRethy/nvim-treesitter-endwise
                endwise = {
                    enable = true,
                },
                -- nvim-treesitter/nvim-treesitter-refactor
                refactor = {
                    highlight_definitions = {
                        enable = true,
                        -- Set to false if you have an `updatetime` of ~100.
                        clear_on_cursor_move = true,
                    },
                    highlight_current_scope = { enable = false },
                },
                -- nvim-treesitter/nvim-treesitter-textobjects
                textobjects = {
                    select = {
                        enable = true,

                        -- Automatically jump forward to textobj, similar to targets.vim
                        lookahead = true,

                        keymaps = {
                            -- You can use the capture groups defined in textobjects.scm
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                            ["ai"] = "@conditional.outer",
                            ["ii"] = "@conditional.inner",
                            ["al"] = "@loop.outer",
                            ["il"] = "@loop.inner",
                            ["ab"] = "@block.outer",
                            ["ib"] = "@block.inner",
                        },
                    },
                    swap = {
                        enable = false,
                        swap_next = {
                            ["<leader>a"] = "@parameter.inner",
                        },
                        swap_previous = {
                                ["<leader>A"] = "@parameter.inner",
                        },
                    },
                    move = {
                        enable = true,
                        set_jumps = true, -- whether to set jumps in the jumplist
                        goto_next_start = {
                            ["]m"] = "@function.outer",
                            ["]]"] = "@class.outer",
                        },
                        goto_next_end = {
                            ["]M"] = "@function.outer",
                            ["]["] = "@class.outer",
                        },
                        goto_previous_start = {
                            ["[m"] = "@function.outer",
                            ["[["] = "@class.outer",
                        },
                        goto_previous_end = {
                            ["[M"] = "@function.outer",
                            ["[]"] = "@class.outer",
                        },
                    },
                },
            })
        end,
    },
    {
        -- Refactor modules for nvim-treesitter
        ---@see https://github.com/nvim-treesitter/nvim-treesitter-refactor
        "nvim-treesitter/nvim-treesitter-refactor",
        dependencies = { "nvim-treesitter" }
    },
    {
        -- Syntax aware text-objects, select, move, swap, and peek support
        ---@see https://github.com/nvim-treesitter/nvim-treesitter-textobjects
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = { "nvim-treesitter" }
    },
    {
        -- Rainbow parentheses for neovim using tree-sitter
        ---@see https://github.com/p00f/nvim-ts-rainbow
        "p00f/nvim-ts-rainbow",
        dependencies = { "nvim-treesitter" }
    },
    {
        -- Autoclose and autorename html tag, works with html,tsx,vue,svelte,php,rescript
        ---@see https://github.com/windwp/nvim-ts-autotag
        "windwp/nvim-ts-autotag",
        dependencies = { "nvim-treesitter" }
    },
    {
        -- Wisely add end-statement in ruby, Lua, Vimscript, etc
        ---@see https://github.com/RRethy/nvim-treesitter-endwise
        "RRethy/nvim-treesitter-endwise",
        dependencies = { "nvim-treesitter" }
    },
}
