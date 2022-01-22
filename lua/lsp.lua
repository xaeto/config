local lsp_installer = require("nvim-lsp-installer")
local updated_capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local installed_servers = lsp_installer.get_installed_servers()

for _, server in pairs(installed_servers) do
    if server then
        require('lspconfig')[server.name].setup {
            capabilities = updated_capabilities
        }
    end
end

lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)
