"{{{divers
tnoremap <Esc> <c-\><c-n>
noremap <ScrollWheelUp> <c-y>
noremap <ScrollWheelDown> <c-e>

"6 lines from tpope vim-sensible:
if empty(mapcheck('<C-U>', 'i'))
	inoremap <C-U> <C-G>u<C-U>
endif
if empty(mapcheck('<C-W>', 'i'))
	inoremap <C-W> <C-G>u<C-W>
endif
inoremap <expr><c-l> deoplete#complete_common_string()
inoremap <expr><c-s> deoplete#refresh()
inoremap <expr>↹ deoplete#toggle()
"direct map puts a «0» after: why?
imap <c-j> ↹<BS>

let g:superMatched=2
function! SuperMatch()
	" toggle
	if(g:superMatched!=1)
		let g:superMatched=1
		if(g:superMatched==0)
			echomsg "SuperMatch: ON"
		endif
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
	else
		"unmap everything
		let g:superMatched=0
		echomsg "SuperMatch: OFF"
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

onoremap ac a(
onoremap am a[
onoremap al a{
onoremap af a<
onoremap ic i(
onoremap im i[
onoremap il i{
onoremap if i<

onoremap at a"
onoremap as a'
onoremap an at
onoremap ar a`
onoremap it i"
onoremap is i'
onoremap in it
onoremap ir i`

onoremap ad ap
onoremap av as
onoremap aj aw
onoremap aw aW
onoremap id ip
onoremap iv is
onoremap ij iw
onoremap iw iW

vnoremap ac a(
vnoremap am a[
vnoremap al a{
vnoremap af a<
vnoremap ic i(
vnoremap im i[
vnoremap il i{
vnoremap if i<

vnoremap at a"
vnoremap as a'
vnoremap an at
vnoremap ar a`
vnoremap it i"
vnoremap is i'
vnoremap in it
vnoremap ir i`

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
onoremap _ '
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

noremap ( gT
noremap ) gt
noremap < :bp<cr>
noremap > :bn<cr>
noremap # #

"noremap b z
noremap c ,
noremap m k<c-y>
noremap l ;
noremap f f
noremap z %

"noremap  g
noremap t hzh
noremap s j<c-e>
noremap n lzl
noremap r t
nmap x <plug>(easymotion-s)

"noremap q <c-w>
noremap q <nop>
noremap d /
noremap v nzz
noremap j b
noremap w w

nmap <space> <plug>(easymotion-bd-w)
"}}}
"{{{L_shift

noremap ¡ <c-w>=
noremap ¿ <c-w>5-
noremap € <c-w>8+
noremap ¶ <c-w>5<lt>
noremap § <c-w>8>

noremap ≠ g@
noremap È gk
noremap É gj
noremap P P
noremap ° D
noremap Y "+y

noremap ± g'
noremap O O
noremap A A
noremap I I
noremap U C
noremap H V

noremap ⸮ S
noremap – R
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

noremap G G
noremap T zh
noremap S <c-e>
noremap N zl
noremap R T
noremap X :noh<cr>

noremap Q Q
noremap D ?
noremap V Nzz
noremap J B
noremap W W
"}}}
"{{{L_ctrl

"<C-Space> mapped on <c-@>
noremap <c-space> <c-^>
noremap <c-p> "+p
noremap <c-y> <c-a>

noremap <c-_> K
noremap <c-o> o<Esc>0d$
noremap <c-a> 0
noremap <c-i> <c-w>W
noremap <S-Tab> `
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
noremap <c-m> <c-d>
noremap <c-f> <c-b>

noremap <c-g> <c-g>
noremap <c-t> zH
noremap <c-s> <c-u>
noremap <c-n> zL
noremap <c-r> <c-f>

noremap <c-q> <c-i>
noremap <c-d> <c-t>
noremap <c-v> i<space><Esc>r<c-v>
noremap <c-j> J
noremap <c-w> gJ
noremap <c-x> <c-]>
"}}}
"{{{L_pf_b

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

noremap b( zW
noremap b) zG
"noremap b( :0tabm<cr>
"noremap b) :tabm<cr>
"noremap b< :-tabm<cr>
"noremap b> :+tabm<cr>

noremap bb za
noremap bc zw
noremap bm z=
noremap bl zg
noremap bf z-
noremap bz z^

noremap bg zA
noremap bt zv
noremap bs zx
noremap bn zX
noremap br z<cr>
noremap bx z+

noremap bq zi
noremap bd zN
noremap bv zn

noremap <expr> b<space> SuperMatch()
"}}}
"{{{L_pf_g

"lnoremap <c-f> <c-p>
"lnoremap <c-r> <c-n>
"re

noremap g! g!
noremap g? g?
noremap g; :%s///gn<Left><Left><Left><Left>
vnoremap g; :s///gn<Left><Left><Left><Left>
noremap g: :'<lt>,'>
vnoremap g: :<c-u>
noremap g" g~

"noremap g@ g@
noremap g@ q
noremap gè :sl<Space>100m<cr>
noremap gé gs
noremap gp gp
noremap g' gU
noremap gy g0

"noremap g_ g'
noremap g_ m
noremap go gd
noremap ga ga
noremap gi gi
noremap gu gu
noremap gh gv

noremap g+ gr
noremap g- gR
noremap g. g;
noremap g, g,
noremap gk g$

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
noremap gs zz
noremap gn zt
noremap gr gK
noremap gx gx

noremap gq gq
noremap gd g<c-a>
noremap gv gnzz
"noremap gj zb
noremap gw gw
"}}}
"{{{L_pf_g_shift

noremap g€ g&

noremap gÈ g<c-]>
noremap gÉ g]
noremap gP gP

noremap g± g`
noremap gO gD
noremap gA g8
noremap gI gI
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

noremap gG g<c-g>
noremap gT H
noremap gS M
noremap gN L
noremap gR z.

noremap gQ gQ
noremap gV gNzz
noremap gJ ze
noremap gW gW
"}}}
"{{{L_pf_q

noremap q! :buffers<cr>
noremap q? :ju<cr>
noremap q; :marks<cr>
noremap q: :his<cr>
noremap q" :reg<cr>

noremap q@ :Plugin
noremap qè :TagbarOpen<space>j<cr>
noremap qé :TagbarToggle<cr>
noremap qp :NERDTreeFocus<cr>
noremap q' :NERDTreeToggle<cr>
"qy <plug>NERDCommenterAlt

noremap q_ <c-w>c
noremap qo <c-w>q
noremap qa :wq<cr>
noremap qi :bd<cr>
noremap qu :w<cr>
"qh NERDCommenterToggle prefix

"q+ q- fugitive (todo)
noremap q, :UndotreeToggle<cr>
noremap q. :UndotreeFocus<cr>
map qhk ghqk
"qk <plug>NERDCommenterToggle
"}}}
"{{{R_pf_q

noremap q( <c-w>H
noremap q) <c-w>L
noremap q< <c-w>K
noremap q> <c-w>J
noremap q# :tabnew<cr>

noremap qb <c-w>T
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

noremap qq <c-w>r
noremap qd <c-w>p
noremap qv <c-w>P
noremap qj <c-w>}
noremap qw <c-w>z
"}}}
"{{{L_pf_q_shift

noremap q± <c-w>o
noremap qO :qa<cr>
noremap qA :wqa!<cr>
noremap qI :bw!<cr>
noremap qU :wa!<cr>
"}}}
"{{{R_pf_q_shift

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

noremap qQ <c-w>R
noremap qD <c-w>\|
noremap qV <c-w>_
noremap qJ <c-w>\|<c-w>_
noremap qW :ball<cr>
"}}}
"{{{L_pf_é

noremap ép [p
noremap é' ]p

noremap éi [#
noremap éu ]#
"}}}
"{{{R_pf_é

noremap éb [*
noremap éc [m
noremap ém ][
noremap él ]m
noremap éf [z
noremap éz [<c-d>

noremap ég <leader>c<space>
noremap ét [[
noremap és []
noremap én ]]
noremap ér ]z
noremap éx ]<c-d>

noremap éq ]*
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

noremap èc [s
noremap èm [{
noremap èl ]s
noremap èf [c
noremap èz [<c-i>

noremap èt [(
noremap ès ]}
noremap èn ](
noremap èr ]c
noremap èx ]<c-i>

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
