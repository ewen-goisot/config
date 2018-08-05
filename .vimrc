:set number
:set relativenumber
:set mouse=a
:set hlsearch
:set autoindent
:set smartindent
:set cin
set backspace=indent,eol,start
:set noerrorbells
:set showmode
:set colorcolumn=64
:set ruler
:set tabstop=4
:set shiftwidth=4
:set cursorline
:set clipboard=unnamed,unnamedplus
:set wildmenu
:set showcmd
:set ru
:set nolist
:set foldmethod=marker

map ZX :cq " quit and return error (helpful when using Vim with Git)
map ZA :qa " quit all buffers
map ZS :xa " quit and save all buffers
map ZQ :q! " force quit
map é :q!
map è :wq
map à :w
map ç :bn<cr>
:inoremap <C-R> <C-G>u<C-R>
:inoremap <C-k> <C-o>za<up><C-o>za
:inoremap <C-j> <C-o>za<down><C-o>za
"nnoremap <space> zazz
"noremap <up> zakzazz
"noremap <down> zajzazz
"noremap <Left> gg
"noremap <Right> G
noremap n nzz
noremap N Nzz
