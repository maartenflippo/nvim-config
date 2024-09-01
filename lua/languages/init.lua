local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

vim.filetype.add({
    extension = {
        mzn = "minizinc",
        fzn = "minizinc",
    },
})

vim.filetype.add({
    extension = {
        coq = "coq",
    },
})

parser_config.minizinc = {
    install_info = {
        url = "https://github.com/shackle-rs/shackle",
        location = "parsers/tree-sitter-minizinc",
        branch = "develop",

        files = { "src/parser.c" },
    },
    filetype = "minizinc",
}
