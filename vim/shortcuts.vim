"{{{insert, command, vrac
"unmap b
if has('nvim')
	"terminal mappings
	tnoremap <Esc> <c-\><c-n>
	"tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
	tnoremap <expr> <c-o><c-r> '<c-\><c-n>"'.nr2char(getchar()).'pi'
	tnoremap <c-o><c-o> <c-o>
	tnoremap <c-o><Esc> <Esc>
	"tnoremap <c-o>p <c-\><c-n>pi
	tnoremap <c-o><c-p> <c-\><c-n>pi
	tnoremap <c-o><c-m> <c-e> \<c-m>
	"be carefull: symbol depends on shell prompt, using $ is safer
	tnoremap <c-o><c-y> <c-\><c-n>0f2<Right>y$i
	"tnoremap <Up> <c-p>
	"tnoremap <Down> <c-n>
else
	"TODO understand why I need to do this
	noremap <Esc> <Esc><Esc>
	inoremap <Esc> <Esc><Esc>
	cnoremap <Esc> <Esc><Esc>
	vnoremap <Esc> <Esc><Esc>
endif
noremap <ScrollWheelUp> <c-y>
noremap <ScrollWheelDown> <c-e>
noremap b <nop>
noremap g <nop>
noremap q <nop>

"shell-like commands: why default <c-a> is on <c-b> ?
cnoremap <C-Space> <c-r>"
cnoremap <c-_> <c-]>
cnoremap <c-a> <c-b>
cnoremap <c-b> <Left>
"<c-d> hors memo
cnoremap <c-d> <c-t>
cnoremap <c-f> <Right>
"double: "for extensions"
cnoremap <c-g><c-f> <c-\><c-g>
cnoremap <c-g><c-g> <c-\>
cnoremap <c-g><c-t> <c-_>
cnoremap <c-g><c-n> <c-^>
cnoremap <c-g><c-r> <c-\><c-n>
cnoremap <c-h> <c-l>
"<c-j> hors memo
cnoremap <c-j> <c-g>
cnoremap <c-k> <c-d>
cnoremap <c-l> <c-f>
cnoremap <c-o> <c-\>e
cnoremap <c-q> <c-k>
cnoremap <c-s> <S-Right>
cnoremap <c-t> <S-Left>
cnoremap <c-z> <c-c><c-z>

noremap "@ "%
noremap "! "=
noremap "? "*
noremap "; "/
"TODO: check if necessary: _ is not ' for registers
noremap "_ "_
noremap @? @*


"inoremap <space> <Esc>a<space>
"inoremap <c-z> <c-o>2u
"inoremap <c-y> <c-o>2<c-r>
"insert and normal has similar behavior
inoremap <c-a> <Home>
inoremap <c-b> <Left>
inoremap <c-e> <End>
inoremap <c-f> <Right>
"<c-g> becomes universal prefix
"improve next TODO
"inoremap <c-g><c-c> <c-g>u
inoremap <c-g><c-m> <c-g>k
inoremap <c-g><c-l> <c-g>U
inoremap <c-g><c-f> <c-\><c-g>
inoremap <c-g><c-g> <c-\>
inoremap <c-g><c-t> <c-_>
inoremap <c-g><c-s> <c-g>j
inoremap <c-g><c-n> <c-^>
inoremap <c-g><c-r> <c-\><c-n>
inoremap <c-j> <c-t>
inoremap <c-k> <c-e>
inoremap <c-q> <c-k>
inoremap <c-s> <S-Right>
inoremap <c-t> <S-Left>
"don't use this because it temporarily disabble abbrev
"inoremap <c-u> <c-g>u<c-u>
"inoremap <c-w> <c-g>u<c-w>


"TODO key for anti abrev, key for toggle abrev (paste) mode
inoremap <expr><c-h> deoplete#complete_common_string()
inoremap <expr><c-l> deoplete#refresh()
"<C-Space> is also on "<c-@>"
inoremap <C-Space> <c-a>
inoremap <c-_> <c-]>
"<Up> and <Down> and others avoid completion
"TODO is it possible without leaving insert mode?
if has('nvim')
	inoremap <Up> <c-o><Up>
	inoremap <Down> <c-o><Down>
	inoremap <PageUp> <c-o><PageUp>
	inoremap <PageDown> <c-o><PageDown>
endif
noremap <expr>↹ deoplete#toggle()
""direct map puts a «0» after: why?
" hors-liste
map ég ↹

"}}}
"{{{function (next isn't inoremap)
"default is on
let g:superMatched=3
function! SuperMatch()
	" toggle
	if (g:superMatched==0 || g:superMatched==2)
		if (g:superMatched==0)
			echomsg "SuperMatch: ON"
		endif
		let g:superMatched=1
		"auto pair most common symbols:
		"typing «f(a,b[0» will write «f(a,b[0])»
		inoremap ( ()<Left>
		inoremap [ []<Left>
		inoremap { {}<Left>
		inoremap « «»<Left>
		"inoremap <lt> <lt>><Left>

		"no <Left> if matching symbol typed
		inoremap () ()
		inoremap [] []
		inoremap {} {}
		inoremap «» «»
		"inoremap <> <>

		"do nothing if backspace is typed after
		inoremap (<BS> (
		inoremap [<BS> [
		inoremap {<BS> {
		inoremap «<BS> «
		"inoremap <lt><BS> <lt>

		"tripple instead of doubles for vim's folding
		"maps may create folds here
		inoremap }} }}}
		inoremap {{ {{{
		inoremap {{<BS> {{
		inoremap }}<BS> }}
		"commented fold 2. Warning: it's recursive
		nmap qh( qha{{<Esc>
		nmap qh) qha}}<Esc>

	elseif (g:superMatched==1)
		"unmap everything, only if mapped before, else E31
		echomsg "SuperMatch: ON"
		let g:superMatched=0

		iunmap (
		iunmap [
		iunmap {
		iunmap «
		"inoremap <lt>

		iunmap ()
		iunmap []
		iunmap {}
		iunmap «»
		"iunmap <>

		iunmap (<BS>
		iunmap [<BS>
		iunmap {<BS>
		iunmap «<BS>
		"iunmap <lt><BS>

		iunmap }}
		iunmap {{
		iunmap {{<BS>
		iunmap }}<BS>
		"commented fold 3. Warning: it's recursive
		nmap qh( qha{{{<Esc>
		nmap qh) qha}}}<Esc>
	endif
endfunction
call SuperMatch()

function! FoldCycle()
	"TODO fold rolling for each method / for recursive folds
	if &foldmethod == "marker"
		echomsg "FoldCycle: indent"
		set foldmethod=indent
	elseif &foldmethod == "indent"
		echomsg "FoldCycle: syntax"
		set foldmethod=syntax
	else
		echomsg "FoldCycle: marker (default)"
		set foldmethod=marker
	endif
endfunction

" TODO: erase because scrolloff works better
function! Move(dir)
	if a:dir==0
		if winline()<5 || line("$") < winheight(winnr())
			normal! j
		else
			normal! j
		endif
	elseif a:dir==1
		if wincol() < 20 || col("$")+12 < winwidth(winnr())
			normal! l
		else
			normal! lzl
		endif
	endif
endfunction

"let g:LazyActive=10
"let g:LazyStep=10
"let g:LazyPeriod=1000
"let g:LazyDirection=1
"function! LazyMove()
	"echomsg "start move"
	"let g:LazyActive=10
	"while g:LazyActive
		"normal! jzz
		"sleep 1
		""exec "normal! " . g:LazyStep . "j"
		""exec! "sleep " . g:LazyPeriod . "m"
		"let g:LazyActive -= 1
	"endwhile
"endfunction

" default, then fct for toggle
noremap r t
noremap f f
noremap <c-m> <c-d>
noremap <c-s> <c-u>
let g:SpeedMode=2
"val==-1: cycle/toggle; other: set
function! SpeedCycle(val)
	if ((g:SpeedMode==0 || g:SpeedMode==2) && a:val==-1) || a:val==1
		if g:SpeedMode==0
			echomsg "SpeedCycle: Fast"
		endif
		let g:SpeedMode=1
		"f,r fast like in Most, Zathura and ctgr
		"insert mode only
		nnoremap f <c-u>
		nnoremap r <c-d>
		nnoremap <c-m> f
		nnoremap <c-s> t
	else
		if g:SpeedMode==1
			echomsg "SpeedCycle: Slow"
		endif
		let g:SpeedMode=0
		"f,r slow like in Tmux-copy and lf
		nnoremap f f
		nnoremap r t
		nnoremap <c-m> <c-d>
		nnoremap <c-s> <c-u>
	endif
endfunction
call SpeedCycle(1)
"   
"}}}
"{{{ onoremap

onoremap ac a"
onoremap am a'
onoremap al at
onoremap af a`
onoremap ic i"
onoremap im i'
onoremap il it
onoremap if i`

onoremap at a(
onoremap as a[
onoremap an a{
onoremap ar a<
onoremap it i(
onoremap is i[
onoremap in i{
onoremap ir i<

onoremap ad ap
onoremap av as
onoremap aj aw
onoremap aw aW
onoremap id ip
onoremap iv is
onoremap ij iW
onoremap iw iw

vnoremap ac a"
vnoremap am a'
vnoremap al at
vnoremap af a`
vnoremap ic i"
vnoremap im i'
vnoremap il it
vnoremap if i`

vnoremap at a(
vnoremap as a[
vnoremap an a{
vnoremap ar a<
vnoremap it i(
vnoremap is i[
vnoremap in i{
vnoremap ir i<

vnoremap ad ap
vnoremap av as
vnoremap aj aw
vnoremap aw aW
vnoremap id ip
vnoremap iv is
vnoremap ij iw
vnoremap iw iW
"}}}
"{{{L_base

noremap ! :!
noremap ?? <leader>
noremap ; :%s///<Left><Left>
vnoremap ; :s///<Left><Left>
noremap : :
"noremap " "

noremap @ @
noremap p p
noremap ' d
noremap y y

noremap _ '
"onoremap _ '
"<c-e> at the end: better for `100o`
"noremap o o<c-e>
noremap o o
noremap a a
noremap i i
noremap u c
noremap h v

noremap + s
noremap - r
noremap . .
noremap , u
noremap k x

noremap e e
"}}}
"{{{R_base

" gt and gT aren't silent
noremap <silent> ( :tabp<cr>
noremap <silent> ) :tabn<cr>
noremap <silent> < :bp<cr>
noremap <silent> > :bn<cr>
noremap # #

"noremap b z
noremap c ,
"TODO rnu scroll/fold incompatible
"nnoremap m k<c-y>
"vnoremap m kzz
" better way: scrolloff + easy to access half-screen scroll
" non canonique, permuté
noremap m k
nnoremap <Up> k<c-y>
noremap l ;
noremap z %

"noremap  g
nnoremap t hzh
vnoremap t h
onoremap t h
"noremap s j<c-e>
"nnoremap <silent> s :call Move(0)<cr>
"vnoremap s jzz
"onoremap s j
"non canonique
noremap s j
noremap <Down> j<c-e>
"noremap n l
nnoremap <silent> n :call Move(1)<cr>
vnoremap n l
onoremap n l
nmap x <plug>(easymotion-s)
"rien
"noremap q <c-w>
noremap q <nop>
noremap d /
" previously, nzz but don't update search count
noremap v n
noremap j b
noremap w w

nmap <space> <plug>(easymotion-bd-w)
"}}}
"{{{L_shift

noremap ¡ <c-w>=
noremap ¿ <c-w>-
noremap € <c-w>+
noremap ¶ <c-w><lt>
noremap § <c-w>>

noremap ≠ g@
noremap È gk
noremap É gj
noremap P P
noremap ° D
"clipboard yank
"disabble v_Y (visual whole line yank) but it's a redundant behavior of Vygv<Esc>
"(= my Hygh<Esc> )
noremap Y "+y

noremap ± g'
noremap O O
noremap A A
noremap I I
noremap U C
noremap H V

noremap ⸮ S
noremap ½ R
noremap … <c-r>
noremap ² U
noremap K X

noremap E E
"}}}
"{{{R_shift

noremap ↦ (
noremap ̊  )
noremap ̄  <
onoremap ̄  <
noremap ̂  >
onoremap ̂  >
noremap  ⃗ *

noremap B =
onoremap B =
noremap C {zz
noremap M <c-y>
noremap L }zz
noremap F F
noremap Z :se wrap!<cr>

noremap G Gzb
noremap T zh
noremap S <c-e>
noremap N zl
noremap R T
"clears both highlight and status
noremap <silent> X :noh\|echo('')<cr>

noremap Q Q
noremap D ?
noremap V N
noremap J B
noremap W W
"}}}
"{{{L_ctrl

"<C-Space> mapped on <c-@>
noremap <c-space> <c-^>
noremap <c-p> :CtrlP<cr>
noremap <c-y> <c-a>

noremap <c-_> K
"noremap <c-o> o<Esc>0d$
noremap <c-o> o<Esc>
vnoremap <c-o> <c-o>
noremap <c-a> 0
nnoremap <c-i> <c-w>W
noremap <S-Tab> `
"unmap <BS>
noremap <BS> <c-w>w
noremap <Insert> zkzjzCzkzO[zzz
"zz à la fin donne un mauvais scroll, pourquoi?
noremap <Del> zjzkzCzjzOzz[z
noremap <S-Del> ``
noremap <c-u> 0d$
noremap <c-h> <c-v>

noremap <c-k> <c-x>

noremap <c-e> $
"}}}
"{{{R_ctrl

noremap <c-b> <c-o>
noremap <c-f> <c-b>

noremap <c-g> <c-g>
noremap <c-t> zH
noremap <c-n> zL
nnoremap <c-r> <c-f>
vnoremap <c-r> <c-f>
noremap <c-x> <c-]>

noremap <c-q> <c-i>
noremap <c-d> <c-t>
"can't directly write some letters like «o» and «u» with <c-v>
"noremap <c-v> i <Esc>r<c-v>
noremap <c-v> i <Esc>r
noremap <c-j> J
noremap <c-w> gJ
"}}}
"{{{L_pf_b

noremap b! :buffers<cr>
noremap b? :ju<cr>
noremap b; :marks<cr>
noremap b: :his c<cr>
noremap b" :reg<cr>

noremap b@ [zzz
noremap bè zM
noremap bé zC
noremap bp zm
noremap b' zO
noremap by zE

noremap b_ ]zzz
noremap bo zR
noremap ba zc
noremap bi zr
noremap bu zo
noremap bh zD

noremap b+ zkzz
noremap b- zjzz
noremap b. zF
noremap b, zf
noremap bk zd

noremap <expr> be FoldCycle()
"}}}
"{{{R_pf_b

"noremap b( zW
"noremap b) zG
noremap b( :clist<cr>
noremap b) :breakl<cr>
noremap b<lt> :che<cr>
"noremap b> ""yiw:dli <c-r>"<cr>
"noremap b> :undol<cr>
noremap b> :changes<cr>
noremap b# :tabs<cr>

noremap bb zA
noremap bc zi
noremap bm zN
noremap bl zn
"noremap bc zw
"noremap bm z=
"noremap bl zg
noremap bf z-
noremap bz z^

noremap bg za
noremap bt zv
noremap bs zx
noremap bn zX
noremap br z<cr>
noremap bx z+

noremap bq z=
noremap bd zG
noremap bv zB
noremap bj zg
noremap bw zb
"those are not on index.txt
"non canonique
noremap <silent> bB :set spell!<cr>
noremap bD zuG
noremap bV zuB
noremap bJ zug
noremap bW zub

noremap <expr> b<space> SuperMatch()
"}}}
"{{{L_pf_g

"lnoremap <c-f> <c-p>
"lnoremap <c-r> <c-n>
"re

noremap g! ~
noremap g? g?
noremap g; :%s///gn<Left><Left><Left><Left>
vnoremap g; :s///gn<Left><Left><Left><Left>
noremap g: :'<lt>,'>
vnoremap g: :<c-u>
noremap g" g~

noremap g@ q
"less important than m'
"then, the final g@ does not work
"noremap g@@ q"
noremap gè :sl 100m<cr>
noremap gé gs
noremap gp gp
noremap g' gU
vnoremap gy g<c-a>

"noremap g_ g'
noremap g_ m
noremap g__ m'
noremap go gd
noremap ga ga
noremap gi gi
noremap gu gu
noremap gh gv

noremap g+ gr
noremap g- gR
noremap g. g,
noremap g, g;
vnoremap gk g<c-x>

noremap ge ge
"}}}
"{{{R_pf_g

noremap g( -
noremap g) +
noremap g< g<
noremap g> g_
noremap g# g#

noremap gb gh
noremap gc ze
noremap gm g<c-h>
noremap gl zs
noremap gf gf
noremap gz \|

noremap gg gg
noremap gt zb
onoremap gt H
noremap gs zz
onoremap gs M
noremap gn zt
onoremap gn L
noremap gr gF
noremap gx gx

noremap gq gq
nnoremap gd g<c-a>
noremap gv gn
noremap <silent> gj :read !date "+<\%y-\%m-\%d>"<cr>kJ
noremap gw gw
"g<space> is for test
"}}}
"{{{L_pf_g_shift

noremap g€ &
noremap g¶ g&

noremap gÈ g<c-]>
noremap gÉ g]
noremap gP gP

noremap g± g`
noremap gO gD
noremap gA g8
noremap gI gI
noremap gU g<c-g>
noremap gH gV

noremap g… g+
noremap g² g-

noremap gE gE
"}}}
"{{{R_pf_g_shift

noremap ḡ ^
noremap ĝ _
noremap g⃗ g*

noremap gB gH
noremap gC g0
noremap gM gm
noremap gL g$
noremap gF g^
noremap gZ go
"noremap gF gF

noremap gG <C-End>
noremap gT H
noremap gS M
noremap gN L
noremap gR z.

"is there any difference between Q and gQ ?
"noremap gQ gQ
noremap gV gN
"non canonique
noremap <silent> gJ :read !date "+<\%Y-\%m-\%d \%H:\%M:\%S>"<cr>kJ
"noremap gJ ze
"noremap gW gW
"}}}
"{{{L_pf_q

noremap q! :tabc<c-b>
noremap q? :0tabmove<cr>
noremap q; :tabmove<cr>
noremap q: :-tabmove<cr>
noremap q" :+tabmove<cr>

noremap q@ :Plugin
noremap qè :TagbarOpen j<cr>
noremap qé :TagbarToggle<cr>
noremap qp :NERDTreeFocus<cr>
noremap q' :NERDTreeToggle<cr>
"qy <plug>NERDCommenterAlt

noremap q_ :bd<cr>
noremap qo <c-w>q
noremap qa :wq<cr>
noremap qi <c-w>c
noremap qu :w<cr>
"qh NERDCommenterToggle prefix

"q+ q- fugitive (todo)
noremap q, :UndotreeToggle<cr>
noremap q. :UndotreeFocus<cr>
map qhk ghqk

"qk <plug>NERDCommenterToggle
"qe paste mode
noremap qe :set paste!<cr>
"}}}
"{{{R_pf_q

noremap q( <c-w>H
noremap q) <c-w>L
noremap q< <c-w>K
noremap q> <c-w>J
noremap q# :tabnew<cr>

noremap qb <c-w>r
noremap qc <c-w>v
noremap qm <c-w>k
noremap ql <c-w>s
noremap qf <c-w>t
noremap qz <c-w>n

noremap qg <c-w>x
noremap qt <c-w>h
noremap qs <c-w>j
noremap qn <c-w>l
noremap qr <c-w>b
noremap qx :enew<cr>

noremap qq <c-w>T
noremap qd <c-w>p
noremap qv <c-w>P
noremap qj <c-w>}
noremap qw <c-w>z

noremap <expr> q<space> SpeedCycle(-1)
"}}}
"{{{L_pf_q_shift

"noremap q¡ :tabo<cr>

"del_buffer, quit_all, write_quit_all, close_other, write_all
noremap q± :bd!<cr>
noremap qO :qa!<cr>
noremap qA :wqa<cr>
noremap qI <c-w>o
noremap qU :wa!<cr>
"}}}
"{{{R_pf_q_shift

noremap qB <c-w>R
noremap qC <c-w>g<c-]>
noremap qM <c-w>]
noremap qL <c-w>^
noremap qF <c-w>f
noremap qZ <c-w>gf

noremap qG <c-w>i
noremap qT <c-w>g}
noremap qS <c-w>g]
noremap qN <c-w>d
noremap qR <c-w>F
noremap qX <c-w>gF

noremap qQ :tabnew\|terminal<cr>
noremap qD <c-w>\|
noremap qV <c-w>_
noremap qJ <c-w>\|<c-w>_
"noremap qW :ball<cr>
"}}}
"{{{L_pf_é

noremap ép [p
noremap é' ]p

noremap éi [#
noremap éu ]#
"}}}
"{{{R_pf_é

"noremap éb [*
noremap éb [(
noremap éc [/
noremap ém [[
noremap él ]/
noremap éf [s
"next isn't on index.txt (sometimes I don't specify it)
noremap éF [S
"noremap éf [z
noremap éz [<c-d>
"noremap <silent> qq :echom<space>screenrow()<cr>
"noremap <silent> qq :echom<space>screencol()<cr>
"noremap ég <leader>c<space>
noremap ét []
noremap és ]]
noremap én ][
noremap ér ]s
noremap éR ]S
"noremap ér ]z
noremap éx ]<c-d>

"noremap éq ]*
noremap éq ])
noremap éd [d
noremap év ]d
noremap éj [D
noremap éw ]D
"}}}
"{{{L_pf_è

noremap èp ['
noremap è' ]'
noremap èi [`
noremap èu ]`
"}}}
"{{{R_pf_è

noremap èb [{
noremap èc [c
noremap èm [m
noremap èl ]c
"noremap èf [c
noremap èz [<c-i>

noremap èt [M
noremap ès ]m
noremap èn ]M
"noremap èr ]c
noremap èx ]<c-i>

noremap èq ]}
noremap èd [i
noremap èv ]i
noremap èj [I
noremap èw ]I
"}}}
"{{{L_pf_?

"}}}
"{{{R_pf_?

noremap ?( '(
noremap ?) ')
noremap ?< '{
noremap ?> '}

noremap ?b q:
noremap ?c `(
noremap ?m `)
noremap ?l `{
noremap ?f `}

noremap ?g q?
noremap ?t `<
noremap ?s `>
noremap ?n `[
noremap ?r `]

noremap ?q q/
noremap ?d '<
noremap ?v '>
noremap ?j '[
noremap ?w ']
noremap q– :QuickhlManualAdd
nmap q+ <Plug>(quickhl-manual-reset)
xmap q+ <Plug>(quickhl-manual-reset)
nmap q- <Plug>(quickhl-manual-this)
xmap q- <Plug>(quickhl-manual-this)
"for hl test: a b c d e f g h i j k l m n o p q r s t u v w x y z
"nmap <Space>w <Plug>(quickhl-manual-this-whole-word)
"xmap <Space>w <Plug>(quickhl-manual-this-whole-word)

"nmap <Space>c <Plug>(quickhl-manual-clear)
"vmap <Space>c <Plug>(quickhl-manual-clear)

"nmap <Space>M <Plug>(quickhl-manual-reset)
"xmap <Space>M <Plug>(quickhl-manual-reset)

"nmap <Space>j <Plug>(quickhl-cword-toggle)
"nmap <Space>] <Plug>(quickhl-tag-toggle)
"map H <Plug>(operator-quickhl-manual-this-motion)
"}}}
