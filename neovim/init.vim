" list of key completions can be found here:
" http://vimdoc.sourceforge.net/htmldoc/intro.html#key-notation

" section: check if vim-plug is installed, install it if not
if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
				https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" section: declaration of all plugins loaded into vim
call plug#begin()
	" Syntax
	Plug 'dense-analysis/ale'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'ntpeters/vim-better-whitespace'
	Plug 'jxnblk/vim-mdx-js'

	" Customizing
	Plug 'jlanzarotta/bufexplorer'
	Plug 'briones-gabriel/darcula-solid.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'mhinz/vim-startify'

	" Editor
	Plug 'editorconfig/editorconfig-vim'
	Plug 'windwp/nvim-autopairs'
	Plug 'kyazdani42/nvim-tree.lua'

	" Other things
	Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

	" Library
	Plug 'rktjmp/lush.nvim'

"	old theme (maybe needed later on)
"	Plug 'EdenEast/nightfox.nvim', {'tag': 'v1.0.0'}
call plug#end()

" section: vim customization
colorscheme darcula-solid
set autoindent
set number
set noexpandtab
set relativenumber
set shiftwidth=2
set tabstop=2
set termguicolors

" section: lua function setup
lua << EOF
require('nvim-autopairs').setup {}
require('nvim-tree').setup {}
require('toggleterm').setup {
	size = 55,
	open_mapping = [[<c-t>]],
	shade_filetypes = {},
	direction = "vertical",
}
EOF

" section: key mappings
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap <C-e> :NvimTreeFocus<CR>
" this is not <C-b> because this key is used by tmux
nnoremap <C-n> :BufExplorer<CR>
nnoremap <C-w> :NvimTreeToggle<CR>
