" --------------------------------------------------------------
" GENERAL
" --------------------------------------------------------------

" --------------------------------------------------------------
" Turn the annoying bell sound off
" --------------------------------------------------------------
:set visualbell

" --------------------------------------------------------------
"  Highlight the current line by default
" --------------------------------------------------------------
:set cursorline

" --------------------------------------------------------------
" Remap colon to spacebar
" --------------------------------------------------------------
nmap <SPACE> :

" --------------------------------------------------------------
" Colorscheme helper
" --------------------------------------------------------------
nmap <leader>as :colorscheme 
nmap <leader>asd :colorscheme base16-
nmap <leader>aa :make && ./app<cr><cr>
nmap <leader>a :make && ./app<cr>
nmap <leader>gg :Git commit -m ""


" --------------------------------------------------------------
" Set Colour Scheme
" --------------------------------------------------------------

"colorscheme nord
colorscheme spacemacs-theme
"colorscheme base16-gruvbox-dark-soft
"colorscheme duotone-desert

" --------------------------------------------------------------
" Font settings that I can choose depending on mood.
" --------------------------------------------------------------
"set guifont=Ubuntu\ Mono\ 13 " <-- Original/Default Setting
"set guifont=Inconsolata\ Medium\ 13 <-- Original Laptop Setting

"set guifont=League\ Mono\ Semi-Expanded\ 11
"set guifont=Inconsolata\ 12

"set guifont=League\ Mono\ Condensed\ 12
"set guifont=Source\ Code\ Pro\ 13
set guifont=JetBrainsMono\ 13



" --------------------------------------------------------------
" UTILITY FUNCTIONS
" --------------------------------------------------------------

" --------------------------------------------------------------
" Set the GVim guioptions to remove undesirable parts of the GUI
" --------------------------------------------------------------
function! SetGUI() 
    :set guioptions-=m " Remove menubar
    :set guioptions-=t " Remove toolbar
    :set linespace=4  " Set space between lines  
    :set belloff=all
    :set foldcolumn=0
    :hi VertSplit guibg=bg guifg=bg
    :hi LineNr guibg=#dddddd " Set the verticle number bar color

    "GUI Settings from stack overflow
    "
    "hi LineNr guibg=bg
    "set foldcolumn=2
    "hi foldcolumn guibg=bg
    "hi VertSplit guibg=bg guifg=bg
endfunction

call SetGUI()

