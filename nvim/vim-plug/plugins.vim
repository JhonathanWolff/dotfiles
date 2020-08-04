" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    	" Better Syntax Support
    	Plug 'sheerun/vim-polyglot'
    	" File Explorer
    	Plug 'scrooloose/NERDTree'
    	" Auto pairs for '(' '[' '{'
    	Plug 'jiangmiao/auto-pairs'

	Plug 'sheerun/vim-polyglot'

	Plug 'davidhalter/jedi-vim'
	
	Plug 'drewtempelmeyer/palenight.vim'
	
	Plug 'kien/ctrlp.vim'

    call plug#end( )

set background=dark
colorscheme palenight

" Search meu
set ignorecase
set smartcase
set hlsearch


let g:ctrlp_working_path_mode = 'c'



nnoremap <c-n> :NERDTreeToggle<cr>
nnoremap <c-p> :CtrlP<cr>
