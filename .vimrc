call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

autocmd BufWritePost .vimrc source $MYVIMRC

colorscheme rdark
set number
syntax on

map <silent><F3> :NEXTCOLOR<cr>
map <silent><F2> :PREVCOLOR<cr>


if has("win32")
	source $HOME\vimfiles\langmap.cp1251.vim
	set iskeyword=@,48-57,_,192-255
else
	source $HOME/.vim/langmap.utf8.vim
endif

" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
set autochdir
"autocmd BufEnter * silent! lcd %:p:h

nmap <leader>ev :tabedit $MYVIMRC<CR>
