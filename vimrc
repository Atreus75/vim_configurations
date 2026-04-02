 call plug#begin('~/.vim/plugged')
	Plug 'matsuuu/pinkmare'	
	Plug 'jiangmiao/auto-pairs'
	Plug 'vim-airline/vim-airline'
	Plug 'tribela/vim-transparent'
	Plug 'davidhalter/jedi-vim'
	Plug 'ycm-core/YouCompleteMe'
call plug#end()

set termguicolors
colorscheme pinkmare
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
set tabstop=4
set shiftwidth=4
set mouse=a
set confirm
