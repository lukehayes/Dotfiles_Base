" General
let mapleader="'"
nmap <SPACE> :
nmap <leader>as :colorscheme<space>
nmap <leader>w :w!<cr>
map <silent> <leader><cr> :noh<cr>

" Movement
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

" Buffers
map <leader>bd :Bclose<cr>
map <leader>ba :1,1000 bd!<cr>
"map <leader>bd :q<cr>     " Close current buffer

" Bash style movement
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" Autocomplete brackets
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" Plugins ----------------------------------------------------------------------

" NERDTree
nmap <leader>nn :NERDTreeToggle<cr>

" Goyo
nmap <silent> <leader>z :Goyo<cr>

" BufExplorer
map <leader>o :BufExplorer<cr>

" Vim Fugitive
nmap <leader>gg :Git commit -m ""<left>

" CtrlP
nmap <leader>j :CtrlP<cr>
