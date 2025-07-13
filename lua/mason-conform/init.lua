local M = {}

--- @class (exact) mason-conform.setupOpts
--- @field ignore_install? string[]
--- @field ensure_install? string[]
--- @type mason-conform.setupOpts
M.config = {
    ignore_install = {},
    ensure_install = {},
}

--- @param cfg? mason-conform.setupOpts
function M.setup(cfg)
    if cfg then
        if cfg.ignore_install then
            M.config.ignore_install = cfg.ignore_install
        end
        if cfg.ensure_install then
            M.config.ensure_install = cfg.ensure_install
        end
    end

    require("mason-conform.auto_install")()
end

return M
