local M = {}

M.config = {
    ignore_install = {},
    ensure_install = {},
}

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
