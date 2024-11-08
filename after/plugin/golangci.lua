local lspconfig = require("lspconfig")
local configs = require("lspconfig/configs")

if not configs.golangcilsp then
	configs.golangcilsp = {
		default_config = {
			cmd = { "golangci-lint-langserver" },
			root_dir = lspconfig.util.root_pattern(".git", "go.mod"),
			init_options = {
				command = {
					"golangci-lint",
					"run",
					"--enable",
					"gocritic",
					"--disable-all",
					"--out-format",
					"json",
					"--issues-exit-code=1",
				},
			},
		},
	}
end
lspconfig.golangci_lint_ls.setup({
	filetypes = { "go", "gomod" },
	init_options = {
		command = {
			"golangci-lint",
			"run",
			"--enable",
			"gocritic",
			"--enable",
			"gosec",
			"--enable",
			"bidichk",
			"--enable",
			"bodyclose",
			"--enable",
			"errchkjson",
			"--enable",
			"exhaustive",
			"--enable",
			"exportloopref",
			"--enable",
			"fatcontext",
			"--enable",
			"nilerr",
			"--enable",
			"noctx",
			"--enable",
			"perfsprint",
			"--enable",
			"prealloc",
			"--out-format",
			"json",
			"--issues-exit-code=1",
		},
	},
})
