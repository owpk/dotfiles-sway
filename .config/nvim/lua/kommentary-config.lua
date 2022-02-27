require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
})

require('kommentary.config').configure_language("typescriptreact", {
    single_line_comment_string = "//",
    multi_line_comment_strings = {"/*", "*/"},
    prefer_single_line_comments = true,
})
