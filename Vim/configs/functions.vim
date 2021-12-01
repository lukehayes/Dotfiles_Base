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
