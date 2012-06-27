call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme rdark
set number
syntax on

map <silent><F3> :NEXTCOLOR<cr>
map <silent><F2> :PREVCOLOR<cr>
