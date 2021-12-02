" General
"
let mapleader="'"
nmap <SPACE> :
nmap <leader>as :colorscheme<space>
nmap <leader>w :w!<cr>
map <silent> <leader><cr> :noh<cr>

" Movement
"
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

" Buffers
"
"map <leader>bd :Bclose<cr>     " Close current buffer
map <leader>ba :1,1000 bd!<cr> " Close all buffers
map <leader>bd :q<cr>     " Close current buffer

map <leader>bd :Bclose<cr>
map <leader>ba :1,1000 bd!<cr>
"map <leader>bd :q<cr>     " Close current buffer

" NERDTree
"
nmap <leader>nn :NERDTreeToggle<cr>

" Goyo
"
nmap <silent> <leader>z :Goyo<cr>

" BufExplorer
map <leader>o :BufExplorer<cr>
