-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Save File
map('n', '<C-s>', 'w<CR>', {})
map('i', '<C-s>', '<Esc><CR>a', {})

-- Delete word backwards
map('n', 'db', 'vb"_d')

-- Select All
map('n', '<C-a>', 'gg<S-v>G')

-- New tab
map('n', 'nt', ':tabedit<Return>', { silent = true })
map('n', 'ct', ':tabclose<Return>', { silent = true })

-- Move Tab
map('n', "gb", ':tabprevious<Return>', { silent = true })

-- Split Window
map('n', 's|', ':vsplit<Return><C-w>w', { silent = true })
map('n', 's_', ':split<Return><C-w>w', { silent = true })

-- Terminal mappings
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Resize Window
map('n', '<C-w><left>', '<C-w><')
map('n', '<C-w><right>', '<C-w>>')
map('n', '<C-w><up>', '<C-w>+')
map('n', '<C-w><down>', '<C-w>-')

------------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------nnoremap <A-j> :m .+1<CR>==
--- NvimTree
map('n', '<C-n>', ':NERDTreeToggle<Return>') -- open/close

-- LSP
map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
map('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
map('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
map('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
map('n', 'gw', ':lua vim.lsp.buf.workspace_symbol()<CR>')
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
map('n', '<leader>af', ':lua vim.lsp.buf.code_action()<CR>')
map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')
