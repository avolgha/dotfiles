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
call plug#end()

colorscheme nightfox

lua << EOF
require('nvim-tree').setup()
EOF

nnoremap <C-e> :NvimTreeToggle<CR>
nnoremap <C-w> :NvimTreeFocus<CR>
nnoremap <C-b> :BufExplorer<CR>
