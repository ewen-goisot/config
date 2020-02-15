"{{{L_base
tnoremap <Esc> <c-\><c-n>
noremap <ScrollWheelUp> <c-y>
noremap <ScrollWheelDown> <c-e>
" for help buffer

noremap ! :!
noremap ? <leader>
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

noremap b+ zjzz
noremap b- zkzz
noremap b. zF
noremap b, zf
noremap bk zd
"}}}
"{{{R_pf_b

noremap b( zW
noremap b) zG

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
"}}}
"{{{L_pf_g

inoremap <expr><c-s> deoplete#refresh()
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

noremap q_ <c-w>q
noremap qo <c-w>c
noremap qa :wq<cr>
noremap qi :bd<cr>
noremap qu :w<cr>
"qh: nerdtree
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

noremap q± :qa!<cr>
noremap qO <c-w>o
noremap qA :wqa<cr>
noremap qI :bw!<cr>
noremap qU :wa!<cr>
"qH nerdtree
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
"}}}
