" Set the GVim guioptions to remove undesirable parts of the GUI
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

" Don't close window, when deleting a buffer
" Shamelessly borrowed from Ultimate Vimrc
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction
