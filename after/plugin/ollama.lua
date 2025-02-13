local llm = require("llm")

llm.setup({
	-- your configuration comes here
	api_token = nil, -- cf Install paragraph
	-- model = "deepseek-coder:6.7b-base", -- the model ID, behavior depends on backend
	-- model = "codellama:7b", -- the model ID, behavior depends on backend
	model = "qwen2.5-coder:7b-base", -- the model ID, behavior depends on backend
	-- model = "phi", -- the model ID, behavior depends on backend
	backend = "ollama", -- backend ID, "huggingface" | "ollama" | "openai" | "tgi"
	url = "http://192.168.1.254:11434", -- the http url of the backend
	-- parameters that are added to the request body, values are arbitrary, you can set any field:value pair here it will be passed as is to the backend
	request_body = {
		parameters = {
			max_new_tokens = 200,
			temperature = 0.1,
			top_p = 0.95,
		},
	},
	tokens_to_clear = { "<endoftext>" },
	fim = {
		enabled = true,
		prefix = "<|fim_prefix|>",
		middle = "<|fim_middle|>",
		suffix = "<|fim_suffix|>",
	},
	-- set this if the model supports fill in the middle
	debounce_ms = 500,
	accept_keymap = "<Tab>",
	dismiss_keymap = "<S-Tab>",
	tls_skip_verify_insecure = false,
	tokenizer = nil, -- cf Tokenizer paragraph
	context_window = 4096, -- max number of tokens for the context window
	enable_suggestions_on_startup = true,
	enable_suggestions_on_files = "*", -- pattern matching syntax to enable suggestions on specific files, either a string or a list of strings
	disable_url_path_completion = false, -- cf Backend
	completion = { enabled = true },
	chat = { enabled = false }, -- Disable chat mode
})

--[[
require("bropilot").setup({
	auto_suggest = true,
	excluded_filetypes = {},
	model = "qwen2.5-coder:7b-base",
	preset = true,
	debounce = 500,
	keymap = {
		accept_word = "<C-Right>",
		accept_line = "<S-Right>",
		accept_block = "<Tab>",
		suggest = "<C-Down>",
	},
	ollama_url = "http://192.168.1.254:11434/api",
})
]]
--
