local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "bean_format",
    method = FORMATTING,
    filetypes = { "beancount" },
    generator_opts = {
        command = "bean-format",
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
