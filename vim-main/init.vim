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
"TODO https://vim.fandom.com/wiki/View_text_file_in_two_columns
"(split screen)
" https://www.drchip.org/astronaut/vim/index.html
" foldcol: what I need for columns
set nocompatible " be iMproved, required
syntax on
set nobackup
set nowritebackup
set ignorecase
set smartcase
set list
"set listchars=tab:>.,trail:-
set listchars=eol:┤,tab:┼─,trail:▀,extends:▐,precedes:▌,nbsp:▄,conceal:x
set shortmess=atToOF
"set listchars=eol:┤,tab:├─,trail:-,extends:█,precedes:╳,nbsp:+
"set listchars=eol:●,tab:\|⋅,trail:-,extends:⏵,precedes:⏴,nbsp:+
set breakindent
set showbreak=█
set mps+=<:>
set mps+=«:»
set mps+==:;
"set mps+=∀:,
"set mps+= ∃:,
"set mps+= ∄:,
"set mps+=⟦,⟧
"set mps+=⌈,⌉
"set mps+=⌊,⌋
"set sidescroll=10
":hi SpecialKey ctermfg=grey guifg=grey70
"set iskeyword+=.,
"I don't use alpha any more because of the «jumping to next number» behavior
"set nrformats+=alpha
"set nrformats-=octal
"set updatetime=10000
"set timeoutlen=4000
set notimeout

filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim', {'pinned': 1} " let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree', {'pinned': 1}  " search/open/… files
Plugin 'scrooloose/nerdcommenter', {'pinned': 1}  " quickly comment or uncomment
"Plugin 'vim-syntastic/syntastic' " check errors and warnings
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline', {'pinned': 1} " better bar (mode… with color)
Plugin 'mbbill/undotree', {'pinned': 1} " historiqe sous forme d'arbre
"if has('nvim')
	""TODO
	"Plugin 'glacambre/firenvim'
"else
	"" can use deoplete and somewhat terminal mode on standard Vim (but not as
	"" good as in Nvim)
	"Plugin 'roxma/vim-hug-neovim-rpc'
	"Plugin 'roxma/nvim-yarp'
"endif
Plugin 'Shougo/deoplete.nvim'
"Plugin 'Shougo/deoplete-clangx' " better completion for C
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'Shougo/neosnippet.vim', {'pinned': 1}
Plugin 'Shougo/neosnippet-snippets'
Plugin 'easymotion/vim-easymotion'
"Plugin 'honza/vim-snippets'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'SirVer/ultisnips', {'pinned': 1}
Plugin 'majutsushi/tagbar', {'pinned': 1} " acces rapide aux fonctions en C
Plugin 'fidian/hexmode.git' " hexadecimal
Plugin 'the-lambda-church/coquille', {'pinned': 1} " coq (ap pl tests comparatifs)
Plugin 'let-def/vimbufsync' " needed for coquille
Plugin 'HiPhish/info.vim' " info manual
Plugin 't9md/vim-quickhl' " multi color highlight
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-scriptease'
"Plugin 'xolox/vim-notes'
Plugin 'dhruvasagar/vim-table-mode'
"Plugin 'tounaishouta/coq.vim'
"Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'kien/ctrlp.vim'
" TODO rainbow fzf ack
"Plugin 'manu/coq-au-vim'
"Plugin 'octol/vim-cpp-enhanced-hi'
"Plugin 'gko/vim-coloresque'      "prévisualiser les couleurs
"Plugin 'Valloric/YouCompleteMe'  " autocomplétion automatique
"Plugin 'ntpeters/vim-better-whitespace'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
call vundle#end()         "required

filetype plugin indent on "required
"remove non-plugin ':Man' mappings
"let g:no_man_maps=1
au FileType help nnoremap <buffer> i /\|\S*\|/b+1<cr>
au FileType help nnoremap <buffer> <c-m> <c-]>
au FileType man nmap <buffer> i K
au FileType man,info nnoremap <buffer> q <nop>
au FileType man,info,help nmap <buffer> u gO
let g:EasyMotion_keys="tusic'mproghd,v.j-qkfèbylénae"
"let g:UltiSnipsSnippetDirectories=['~/.vim/bundle/ultisnips','UltiSnips']
"let g:UltiSnipsExpandTrigger='<tab>'
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" don't call deoplete too soon = avoid lag
" only once: ég shortcut toggles deoplete
if has('nvim')
	let g:deoplete#enable_at_startup = 0
	" better: start it only if needed
	"autocmd InsertEnter * ++once call deoplete#enable()
else
	let g:deoplete#enable_at_startup = 1
endif
" suggested in deoplete's manual
let g:python3_host_prog = '/usr/bin/python3'
" avoid blink, allow return isof complete for fast typer
let g:deoplete#auto_complete_delay = 150
"call deoplete#custom#option('min_pattern_length',1)
"let g:deoplete-source-attribute-min_pattern_length =1
"set completeopt+=noinsert
set completeopt-=preview
"autocmd FileType text call deoplete#custom#buffer_option('auto_complete', v:false)
"let g:better_whitespace_enabled=1
"let g:strip_whitespace_on_save=1
":EnableWhitespace
"UpdateRemotePlugins [for nvim one time for deoplete]

imap <expr><C-i> neosnippet#expandable_or_jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<C-v>\<C-i>"
smap <expr><C-i> neosnippet#expandable_or_jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<C-v>\<C-i>"
"smap <C-i> <Plug>(neosnippet_expand_or_jump)
"xmap <C-i> <Plug>(neosnippet_expand_target)

" check only if saved, like syntastic
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 0

let g:cpp_class_scope_hi = 1
let g:cpp_member_variable_hi = 1
let g:cpp_class_decl_hi = 1
"let g:cpp_experimental_simple_template_hi = 1
"let g:cpp_experimental_template_hi = 1
let c_no_curly_error=1

"soi fonts-powerline
"terminal font settings: hack
"all: e0b0…
let g:airline_powerline_fonts=1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:cpp_concepts_hi = 1
"let g:NERDCommenterMappings=0

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="tabdo"

let g:tagbar_ctags_bin="/usr/bin/ctags"
"let g:tagbar_show_linenumbers=-1
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"helptags ~/.vim/bundle/ctrlp.vim/doc
"let g:ctrlp_map = '<c-p>'

"let g:tmux_navigator_no_mappings = 1
let g:undotree_ShortIndicators=1
"easyer easymotion
let g:undotree_TreeNodeShape='o'
hi Visual ctermfg=52
hi DiffAdd ctermbg=17
hi DiffChange ctermbg=53
let g:NERDTreeAutoCenter=0
let g:NERDTreeMinimalUI=1

let g:quickhl_manual_colors=14
"TODO gui colors
let g:quickhl_manual_colors = [
			\ "ctermfg=15  ctermbg=12 ",
			\ "ctermfg=16  ctermbg=13 ",
			\ "ctermfg=15  ctermbg=9  ",
			\ "ctermfg=16  ctermbg=130",
			\ "ctermfg=16  ctermbg=10 ",
			\ "ctermfg=16  ctermbg=14 ",
			\ "ctermfg=16  ctermbg=15 ",
			\ "ctermfg=15  ctermbg=12 ",
			\ "ctermfg=16  ctermbg=13 ",
			\ "ctermfg=15  ctermbg=9  ",
			\ "ctermfg=16  ctermbg=130",
			\ "ctermfg=16  ctermbg=10 ",
			\ "ctermfg=16  ctermbg=14 ",
			\ "ctermfg=16  ctermbg=15 ",
			\ ]

"00 non
"01 non
"10 non, rr
"11 non, large

function! s:IsFirenvimActive(event) abort
	if !exists('*nvim_get_chan_info')
		return 0
	endif
	let l:ui = nvim_get_chan_info(a:event.chan)
	return has_key(l:ui, 'client') && has_key(l:ui.client, 'name') &&
				\ l:ui.client.name =~? 'Firenvim'
endfunction

function! OnUIEnter(event) abort
	if s:IsFirenvimActive(a:event)
		set lines=20
		set columns=66
	"%d
	endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))

function! OnBrowserEnter()
	set tw=65
	set spelllang=fr,en
	set spell
	source ~/prog/026_sinapt_ter/accents_french/v_3lettre.vim
	source ~/prog/026_sinapt_ter/accents_french/v_global.vim
	inoremap ↹ <Esc>:wq<CR>
	noremap ↹ :wq<CR>
endfunction
"autocmd! BufNewFile *.browser call OnBrowserEnter()

if exists('g:started_by_firenvim')
	"set laststatus=1
	source ~/prog/026_sinapt_ter/accents_french/v_3lettre.vim
	source ~/prog/026_sinapt_ter/accents_french/v_global.vim
	set tw=60
	"inoremap <S-CR> <Esc>:!(sleep 2; xdotool key Control_L+A; sleep .1; xsel -op\|xsel -ib)&<CR>:wq<CR>
	"inoremap <S-CR> <Esc>gg"+yG:!(sleep 2; notify-send bar; xdotool key Control_L+V; sleep 1; xdotool key Return)&<CR>:wq<CR>
	"inoremap <S-CR> <Esc>gg"+yGggdG:!(sleep 1; xdotool key Control_L+15; sleep .2; xdotool key Control_L+V; xdotool sleep .2; xdotool key Return; sleep .5; xdotool key Control_L+15)&<CR>:q!<CR>
	inoremap <S-CR> <Esc>gg"+yGggdG:!(sleep 1; xdotool key Control_L+15; sleep .2; xdotool key 192; sleep .2; xdotool key Return; xdotool sleep .2; xdotool key Return; sleep .2; xdotool key Control_L+15)&<CR>:wq<CR>
	"set guifont=Apple_Color_Emoji:h18
	"set lines=20
	startinsert|
else
	"set laststatus=2
endif

highlight Normal guifg=white guibg=black
" better contrast
hi WarningMsg ctermfg=202 guifg=red
hi Title ctermfg=225 cterm=bold ctermbg=black guifg=magenta gui=bold
"changed on /usr file as root/sudo
"TODO check if you did that too or uncomment next line
hi Special ctermfg=202 guifg=orange
hi Visual ctermbg=239
"Gvim: scrollbarS but no menus
set guioptions="br"
hi ColorColumn ctermbg=234 guibg=#202020
hi MatchParen ctermbg=14 ctermfg=0
hi Tabline     cterm=none ctermfg=white ctermbg=239
hi TablineSel  cterm=none ctermfg=0 ctermbg=83
hi TablineFill cterm=none ctermbg=0

set cursorline
set nocursorcolumn
set number
set norelativenumber
set mouse=a
set hlsearch
set lazyredraw
set smartindent
"set cin
set backspace=indent,eol,start
set noerrorbells
"set colorcolumn=8,16,24,32,40,48,56,64
set colorcolumn=
set ruler
set scrolloff=3
set guicursor=a:block-Cursor
"set guicursor+=i:blinkon1
set guicursor+=a:blinkon0
hi VertSplit cterm=NONE ctermfg=white
hi! Search cterm=NONE ctermbg=yellow ctermfg=black guibg=yellow guifg=black
hi! IncSearch cterm=NONE ctermbg=red ctermfg=black guibg=red guifg=black
hi! Folded cterm=NONE ctermbg=NONE ctermfg=102
"hi FoldColumn cterm=NONE ctermbg=blue ctermfg=red
hi! LineNr cterm=NONE ctermbg=black ctermfg=102 ctermbg=0 guifg=#808080
hi! CursorLineNr ctermbg=234 ctermfg=yellow
hi! CursorLine cterm=NONE ctermbg=234 ctermfg=NONE guibg=#202020 guifg=NONE
hi! CursorColumn cterm=NONE ctermbg=black ctermfg=white guibg=black guifg=white
au InsertEnter * setlocal cursorcolumn
hi! CursorColumn cterm=NONE ctermbg=17 ctermfg=white guibg=#000055 guifg=#ffffff
au InsertLeave * setlocal nocursorcolumn
"au InsertLeave * hi CursorColumn cterm=NONE ctermbg=black ctermfg=white guibg=#000000 guifg=#ffffff
"only for neovim
if has('nvim')
"now works with vim's plugin
	augroup user_group_terminal
		au TermOpen * setlocal wrap
		au TermOpen * setlocal list
		au TermOpen * setlocal modifiable
		au TermOpen * startinsert
	augroup END
endif
""fast move on help because it's readonly
"au BufRead $VIMRUNTIME/doc/*.txt call SpeedCycle(1)
"red or orange,yellow for easymotion plugin
hi EasyMotionTarget2First cterm=bold ctermbg=black ctermfg=208 guibg=black guifg=orange
hi EasyMotionTarget2Second cterm=bold ctermbg=black ctermfg=yellow guibg=black guifg=yellow
hi EasyMotionTarget cterm=bold ctermbg=black ctermfg=red guibg=black guifg=red

set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set nojs
set clipboard=unnamed
set wildmenu
set showcmd
set showmode
set ru
set foldmethod=marker
set ttimeoutlen=0

"tab all
"use file hierarchy instead
let g:airline#extensions#whitespace#mixed_indent_algo = 1
"let g:tex_flavor='latex'
augroup user_group_filetype
	"au FileType c,h,cpp,hpp call deoplete#custom#var('clangx', 'clang_binary', '/usr/local/bin/clang')
	"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
	"au FileType c,h,cpp,hpp source ~/.vim/.cpp.vimrc
	"au FileType c,cpp,java set mps+==:;
	"au FileType text setlocal textwidth=80
	"au FileType text setlocal colorcolumn=8,16,24,32,40,48,56,64
	au FileType text setlocal iskeyword+=',-
	au! BufNewFile,BufRead *.help setf help
	"TODO ftdetect
	au! BufNewFile,BufRead *.tuto,*.not setf not
	au BufNewFile,BufRead *.tuto,*.not set colorcolumn=80
	"au! BufNewFile *.help hi Special ctermfg=202
augroup END

"setglobal complete-=i     " Searching includes can be slow
"setglobal foldopen+=jump
" *VT100*translations: #override\Ctrl<Key>i:string("\033[Y")

source ~/.vim.new
