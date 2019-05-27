"vim plugins with vundle
"https://repo.zenk-security.com/
"^ source de savoir quasi infinie
"karabiner = tab :!= c-i (osx uniquement)
"loupe: meilleure coloration des recherches
"TODO https://vimawesome.com
"repeat.vim (compat repeter+plugin)
"cd ~/.vim/bundle
"git clone git://github.com/tpope/vim-abolish.git
"vim surround
"https://github.com/ervandew/supertab
"vim ctrlp
set nocompatible              " be iMproved, required
set ignorecase
set smartcase
set list
"set listchars=tab:>.,trail:-
set listchars=eol:$,tab:▸_,trail:~,extends:>,precedes:<
":hi SpecialKey ctermfg=grey guifg=grey70

"set iskeyword
set iskeyword+=.
set iskeyword+=,
set nrformats+=alpha

filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'  " search/open/… files
Plugin 'vim-syntastic/syntastic' " check errors and warnings
Plugin 'vim-airline/vim-airline' " better bar (mode… with color)
Plugin 'gko/vim-coloresque'      "prévisualiser les couleurs
"Plugin 'Valloric/YouCompleteMe'  " autocomplétion automatique
Plugin 'Shougo/deoplete.nvim'
Plugin 'easymotion/vim-easymotion'
Plugin 'ntpeters/vim-better-whitespace'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'kien/ctrlp.vim'
call vundle#end()            " required
filetype plugin indent on    " required
let g:EasyMotion_keys="utis'cpmorhg,d.vàj/qèfybélane"
"let g:UltiSnipsSnippetDirectories=['~/.vim/bundle/ultisnips','UltiSnips']
"let g:UltiSnipsExpandTrigger='<tab>'
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
":EnableWhitespace
"UpdateRemotePlugins [for nvim one time for deoplete]
"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_simple_template_highlight = 1
"let g:cpp_experimental_template_highlight = 1
let c_no_curly_error=1

let g:cpp_concepts_highlight = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="tabdo"

"set runtimepath^=~/.vim/bundle/ctrlp.vim
"helptags ~/.vim/bundle/ctrlp.vim/doc
"let g:ctrlp_map = '<c-p>'

"let g:tmux_navigator_no_mappings = 1

"nnoremap <c-T> {Up-Mapping} :TmuxNavigateUp<cr>
"nnoremap <c-S> {Left-Mapping} :TmuxNavigateLeft<cr>
"nnoremap <c-w><c-l> {Right-Mapping} :TmuxNavigateRight<cr>
"nnoremap <c-R> {Down-Mapping} :TmuxNavigateDown<cr>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
"nmap <A-n> gg

colorscheme desert
hi Search cterm=NONE ctermfg=black ctermbg=yellow

set number
set norelativenumber
set mouse=a
set hlsearch
set autoindent
set smartindent
"set cin
set backspace=indent,eol,start
set noerrorbells
set colorcolumn=64
set ruler
set tabstop=2
set shiftwidth=2
set cursorline
"set cursorcolumn
"set ignorecase
set clipboard=unnamed
set wildmenu
set showcmd
set showmode
set ru
"set nolist
set foldmethod=marker
set ttimeoutlen=0
":set wrapscan
":set nowrapscan
"set nowrap

tab all

"map ZX :cq " quit and return error (helpful when using Vim with Git)
"map ZA :qa " quit all buffers
"map ZS :xa " quit and save all buffers
"map ZQ :q! " force quit
map ç :tabn<cr>
map ù :tabp<cr>
map Ç :bn<cr>
map Ù :bp<cr>

noremap éc :reg<cr>
noremap ém :marks<cr>
noremap él :history<cr>

noremap ét :w!<cr>
noremap és :q<cr>
noremap én :wq<cr>
noremap ér :q!<cr>

noremap éd :wa<cr>
noremap év :qa<cr>
noremap éw :qa!<cr>

noremap éé :NERDTree<cr>
noremap ép :source ~/.vimrc<cr>
noremap é' <Home>d<End>

noremap éi :PluginInstall<cr>
noremap éI :PluginClean<cr>
noremap éu :PluginUpdate<cr>
noremap éU :PluginSearch<cr>
noremap éh :tab help<Space>

noremap ée "+y
"noremap éi "+p
"noremap éI "+P
"map éu :reg<cr>
map éa ggg?G

noremap èb <c-w>c
noremap èc <c-w>v
noremap èm <c-w>s
noremap èg <c-w>p
noremap èt <c-w>k
noremap ès <c-w>h
noremap èn <c-w>l
noremap èr <c-w>j
noremap èd <c-w>8>
noremap èv <c-w>5<
noremap èj <c-w>8+
noremap èw <c-w>5-


noremap n nzz
noremap N Nzz
noremap * *zz
noremap # #zz
noremap <up> <up>
noremap <down> <down>
map à ;
map h x
map ê X
"map ^ G
noremap j zazz
"nmap l <Plug>(easymoion-bd-w)
nmap l <leader><leader>w
nmap gl <leader><leader>b

nmap <BackSpace> }zz
nmap <Delete> {zz
nmap <Return> o
nmap é<Return> i<Return>
nmap <Space> ==
nmap <PageUp> za<up>zazz
nmap <PageDown> za<down>zazz
nmap ( <up>zz
nmap ) <down>zz
nmap <C-i> <C-x>

autocmd FileType cpp inoremap ép <Space>bi<cr>tk:.! sed "y/kuiaodrnstxwjv,.à/x123467890cdef5ab/"<cr>kJA
autocmd FileType cpp inoremap é' <Home><C-o>d<End>

autocmd FileType cpp inoremap éq <<":"<<
autocmd FileType cpp inoremap éd o
autocmd FileType cpp inoremap év <End>/*  */<C-o>2h
autocmd FileType cpp inoremap éj ;
autocmd FileType cpp inoremap éw <End>/* TODO  */<C-o>2h

autocmd FileType cpp inoremap éc 0
autocmd FileType cpp inoremap ém 1

autocmd FileType cpp inoremap É dd
"autocmd FileType cpp inoremap à /*  */2h
"autocmd FileType cpp inoremap À /*
*/<Up>
"autocmd FileType cpp inoremap è +
autocmd FileType cpp inoremap ê *
"autocmd FileType cpp inoremap ç %
autocmd FileType cpp inoremap ù <Space>&&<Space>
autocmd FileType cpp inoremap ç <Space><Bar><Bar><Space>
"inoremap Ù <Space>||<Space>

"inoremap <C-R> <C-G>u<C-R>
"inoremap <PageUp> <C-o>za<up><C-o>za
"inoremap <PageDown> <C-o>za<down><C-o>za
inoremap <C-Up> <C-o>B
inoremap <C-Down> <C-o>W
"inoremap  <C-o>dB
inoremap <C-Delete> <C-o>de
inoremap <C-BackSpace> <C-o>db

autocmd FileType cpp inoremap ét :w<Return>
autocmd FileType cpp inoremap és u


vmap <Delete> {zz
vmap <Tab> }zz
