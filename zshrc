alias tmux="tmux -2"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
alias xterm="xterm -xrm 'XTerm*VT100*translations: #override\nShift Ctrl <KeyPress> v:insert-selection(CLIPBOARD)\nShift Ctrl <KeyPress> c:select-set(CLIPBOARD)'"
