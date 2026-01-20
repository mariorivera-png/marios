local M = {}

function M.setup()
    require("marios.highlights").setup(
        require("marios.colors")
    )
end

return M