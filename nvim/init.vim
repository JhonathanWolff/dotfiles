call plug#begin('~\AppData\Local\nvim\plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
"precisa de nodejs
Plug 'neoclide/coc.nvim', {'branch': 'release'}



"Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
"sudo apt-get install ripgrep
Plug 'BurntSushi/ripgrep'


call plug#end()


"nerdTree
let NERDTreeQuitOnOpen=1

set clipboard=unnamed
colorscheme gruvbox

"IDE Config
set relativenumber
set mouse=a
let mapleader =" "
set wildmenu
set wildmode=longest,list,full
:set tabstop=4
:set shiftwidth=4
:set expandtab


"Keybind
nnoremap<leader>e :NERDTreeToggle<CR>
nnoremap<C-E> :NERDTreeToggle<CR>
nnoremap zs :w<CR>
nnoremap zz :q<CR>
nnoremap ´´ :vsplit<CR>
nnoremap <C-w> :q<CR>
nnoremap <C-s> :w<CR>
nnoremap <leader>t :Ttoggle<CR>
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>le
nnoremap <leader>f :Neoformat<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>



" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


nmap <C-UP> :m-2<CR>  
nmap <C-DOWN> :m+1<CR>


vmap <C-UP> :m '<-2<CR>gv=gv  
vmap <C-DOWN> :m '>+1<CR>gv=gv

nnoremap <p> pgvy
inoremap jk <Esc>
nnoremap <S-y> y$

xnoremap <Tab> >gv
xnoremap <S-Tab> <gv

nnoremap <leader>l $
nnoremap <leader>h _

"COC config
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"


" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use <c-space> for trigger completion
inoremap <silent><expr> <c-l> coc#refresh()



