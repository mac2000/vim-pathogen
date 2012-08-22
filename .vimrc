" Grecefully degrading vimrs
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"autocmd BufWritePost .vimrc source $MYVIMRC

map <silent><F3> :NEXTCOLOR<cr>
map <silent><F2> :PREVCOLOR<cr>

if has("gui_running")
    colorscheme darkbone
    "eclipse ekvoli rdark wombat darkbone
endif


if has("win32")
    map <leader>d :cd $HOME/Desktop<CR>:pwd<CR>
    source $HOME\vimfiles\langmap.cp1251.vim
    set iskeyword=@,48-57,_,192-255

    set fileencoding=utf8
    set fileencodings=utf8,cp1251,default
    if has("gui_running")
        set guifont=Lucida_Console:h12:cRUSSIAN
    endif
else
    map <leader>d :cd $HOME/Desktop<CR>:pwd<CR>
    source $HOME/.vim/langmap.utf8.vim

    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        colorscheme wombat256
    endif
endif


" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
" set autochdir -- REMOVED
nmap cd :cd %:p:h<CR>:pwd<CR>
"autocmd BufEnter * silent! lcd %:p:h


nmap <leader>ev :tabedit $MYVIMRC<CR>

nmap <leader>l :set list!<CR>   
set list
set listchars=eol:$,tab:\|-,trail:~,extends:>,precedes:<

if has("gui_running")
    set cursorline
    "hi cursorline guibg=#333333
    "hi CursorColumn guibg=#333333
endif

map <leader>d :cd $HOME/Desktop<CR>:pwd<CR>
map <leader>c <C-_><C-_>
imap jj <ESC>

nmap <leader>r :retab!<CR>
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR> " Shift + - + 4
nmap _+ :call Preserve("normal gg=G")<CR> " Shift + - + =
nmap _^ :call Preserve("%s/^\\s\\*$//e")<CR> " Shift + - + 6 

au BufRead,BufNewFile *.md set filetype=mkd
au BufRead,BufNewFile *.scss set filetype=scss
au Syntax *.md normal zR
au BufRead,BufNewFile .gitignore,.gitconfig,.gitmodules set noexpandtab

" Saves file when Vim window loses focus
" au FocusLost * :wa - annoing on not saved buffers!

" MiniBuffExplorer Ctrl + Tab - switch between buffers
let g:miniBufExplMapCTabSwitchBufs = 1 
nmap <TAB> :bn<CR>
nmap <ESC><ESC> :bd<CR>
