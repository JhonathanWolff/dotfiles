" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
	
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}

    	" Better Syntax Support
    	Plug 'sheerun/vim-polyglot'
    	" File Explorer
    	Plug 'scrooloose/NERDTree'
    	" Auto pairs for '(' '[' '{'
    	Plug 'jiangmiao/auto-pairs'

	Plug 'sheerun/vim-polyglot'

	Plug 'davidhalter/jedi-vim'
	
	Plug 'drewtempelmeyer/palenight.vim'

	Plug 'airblade/vim-gitgutter'
	
	Plug 'ryanoasis/vim-devicons'
	
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'scrooloose/nerdcommenter'

	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
	Plug 'junegunn/fzf.vim'
	
	Plug 'kien/ctrlp.vim'
	
	"Caso de BO com o plugin rode os seguintes codigos
	"sed -i.bu 's/async=True/**{"async": True}/' ~/.config/nvim/autoload/plugged/nvim-completion-manager/pythonx/cm.py
	"sed -i.bu 's/async=True/**{"async": True}/' ~/.config/nvim/autoload/plugged/nvim-completion-manager/pythonx/cm_core.py
	Plug 'roxma/nvim-completion-manager'


	"Pytho sintax highliter
	Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
	Plug 'mhinz/vim-startify'
	"Python Sintax  erros 
	"Plug 'dense-analysis/ale'
	
call plug#end( )

set background=dark
colorscheme palenight

" Search meu
set ignorecase
set smartcase
set hlsearch
set number
set hidden

let g:ctrlp_working_path_mode = 'c'
let g:ag_working_path_mode='r'

nnoremap <c-f> :Ag<cr>
nnoremap <c-n> :NERDTreeToggle<cr>
nnoremap <c-p> :CtrlP<cr>
nnoremap <c-s> :w<cr>


nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
