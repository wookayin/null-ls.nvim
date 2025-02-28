local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "cabal_fmt",
    method = FORMATTING,
    filetypes = { "cabal" },
    generator_opts = {
        command = "cabal-fmt",
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
