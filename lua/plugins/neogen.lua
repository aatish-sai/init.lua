return {
    "danymat/neogen",
    keys = {
        { "<leader>cc", function()
            require("neogen").generate({})
        end,
        },
    },
    opts = { snippet_engine = "luasnip" },
}
