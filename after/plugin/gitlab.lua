local lspconfig = require("lspconfig")

lspconfig.gitlab_ci_ls.setup({
	filetypes = { "yaml", "yaml.gitlab" },
})
