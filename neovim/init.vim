" list of key completions can be found here:
" http://vimdoc.sourceforge.net/htmldoc/intro.html#key-notation

set number
set autoindent

set tabstop=2
set shiftwidth=2
set noexpandtab

call plug#begin()
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'dense-analysis/ale'
	Plug 'EdenEast/nightfox.nvim', {'tag': 'v1.0.0'}
	Plug 'jlanzarotta/bufexplorer'
	Plug 'jxnblk/vim-mdx-js'
	Plug 'pantharshit00/vim-prisma'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'windwp/nvim-autopairs'
call plug#end()

colorscheme nightfox

lua << EOF
require('nvim-tree').setup()

require('nvim-autopairs').setup {}
EOF

nnoremap <C-e> :NvimTreeToggle<CR>
nnoremap <C-w> :NvimTreeFocus<CR>
" this is not <C-b> because this key is used by tmux
nnoremap <C-n> :BufExplorer<CR>

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
