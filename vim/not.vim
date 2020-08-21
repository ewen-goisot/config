"syn clear
"TODO setlocal partout
set foldlevel=2
set foldmethod=syntax
"hi clear
"syn on
set listchars=eol:\ ,tab:\ \ ,trail:▀,extends:▐,precedes:▌,nbsp:▄,conceal:x
"DONE franglais
setlocal spell
setlocal spelllang=fr,en
setlocal textwidth=80
syntax spell notoplevel
set filetype=not
set iskeyword+=-,'

"todo: "" bol is input, shb normal
syn sync minlines=50
syn sync maxlines=500

syn keyword notAdd patch perso hint test alias done Patch Perso Hint Test Alias Done contained
syn keyword notBase note notes todo source source1 source2 source3 exemple example Note Notes Todo Source Source1 Source2 Source3 Exemple Example contained
syn keyword notRem warning warn strange error fixme givup dl dm dh aprox Warning Warn Strange Error Fixme Givup Aprox contained
syn match notName "\k*" contained
syn cluster notMark contains=notAdd,notBase,notRem,notName
"TODO : after arrow
syn match notWord "\(^\t*\)\?\k*:" contained contains=@notMark
"TODO pas que '; et autres avant :
syn match notEscapeWord " \S*[^ ';\t]:" contained contains=notUrl,notAdd,notBase,notRem transparent

syn match notFooBar "\<_[a-z]*" contained
syn match notFooBar "\<\(foo\|bar\|baz\|lorem\|ipsum\|aaa\|bbb\|ccc\|xxx\|yyy\|zzz\)\>" contained

syn match notEmpty "^\t*_"  contained
"syn match notUrl "\( \|^\)\zs[^ \t:]\S\+[./]\S\+[^.,;` \t]" contained contains=@NoSpell
"syn match notUrl "[^ \t]\S\+[./]\S\+[^.,;` \t]" contained contains=@NoSpell
"syn match notUrl "\S\+[./]\S\+[^.,; \t]" contained contains=@NoSpell
syn match notUrl +https\?://\S*+ contained contains=@NoSpell,notEscapeWord
syn match notStamp "<[^<>]*>"     contained contains=notQuote
syn match notStamp "\[[^\[\]]*\]" contained contains=notQuote
syn match notStamp "\<'.'\>" contained
syn match notStamp ":\S\+"   contained contains=notQuote
"syn match notQuote "\"[^"\t]*\(["\t]\|$\)" contained contains=notFooBar
"TODO this small qote is enough
syn region notQuote start="\"" end="\"" skip="\\." contained contains=notFooBar
syn match notMacro "\s\(@\S[^@\t]*\)\+\(@\s\|\t\|@\?$\)"  contained contains=@notNormalContent,@NoSpell
syn match notInputSmall   "`[^`\t]*\([`\t]\|$\)"  contained contains=@notInputContent
syn match notSpecialSmall "\~[^~\t]*\([~\t]\|$\)" contained
syn match notIndent "[^_a-zA-Z\t]\t\+" transparent contained contains=@NoSpell
syn match notSeparator ",\t" contained

syn cluster notInputContent   contains=@NoSpell,notQuote,notFooBar,notIndent,notUrl,notSeparator
syn cluster notNormalContent  contains=@Spell,@notChatContent,notStamp,notWord,notQuote,notMacro,notInputSmall,notSpecialSmall,notUrl,notFooBar,notIndent,notList,notEscapeWord
syn cluster notSpecialContent contains=@Spell,notQuote,notStamp,notIndent,notFooBar,notList

syn match notSpecial "[^\t]\+\t*" contained contains=@notSpecialContent nextgroup=notInput
syn match notNormal  "[^\t]\+\t*" contained contains=@notNormalContent  nextgroup=notSpecial
syn match notInput   "[^\t]*[^,:\t]\(,\t\+[^\t]*[^,\t]\)*\t\+" contained contains=@notInputContent nextgroup=notNormal

syn match notNormal  "^\t*\(-*>\)\?[^\t]\+$"     contains=@notNormalContent,@notListTag
syn match notInput   "^\t*\(-*>\)\?[^\t]*[^,\t]\(,\t\+[^\t]*[^,\t]\)*\t\+" contains=@notInputContent,@notListTag nextgroup=notNormal

syn match notInput   "^\t*_\t\t\t\(\t\t\t\)*[^\t]*[^,\t]\(,\t\+[^\t]*[^,\t]\)*[^,\t]\t*" contains=@notInputContent,notEmpty   nextgroup=notNormal
syn match notNormal  "^\t*_\t\(\t\t\t\)*[^\t]\+\t*"     contains=@notNormalContent,notEmpty  nextgroup=notSpecial
syn match notSpecial "^\t*_\t\t\(\t\t\t\)*[^\t]\+\t*"   contains=@notSpecialContent,notEmpty nextgroup=notInput

syn match notNormal  "^[a-zéè_]*:\t\+[^\t]\+\(,\t\+[^\t]\+\)*$" contained contains=@notNormalContent  nextgroup=notSpecial

syn match notTitle1 "^\t*#\(######\)*[^#]"me=e-1 contained
syn match notTitle2 "^\t*##\(######\)*[^#]"me=e-1 contained
syn match notTitle3 "^\t*###\(######\)*[^#]"me=e-1 contained
syn match notTitle4 "^\t*####\(######\)*[^#]"me=e-1 contained
syn match notTitle5 "^\t*#####\(######\)*[^#]"me=e-1 contained
syn match notTitle6 "^\t*######\(######\)*[^#]"me=e-1 contained
syn cluster notTitleTag contains=notTitle1,notTitle2,notTitle3,notTitle4,notTitle5,notTitle6
syn match notTitle  "^\t*#\+[^\t]*$" contained contains=@notTitleTag,@notNormalContent,@NoSpell
syn match notTitle  "^\t*#\+[^\t]*$"  contains=@notTitleTag,@notNormalContent,@NoSpell

syn match notList1 "^\t*\(------\)*>" contained
syn match notList2 "^\t*-\(------\)*>" contained
syn match notList3 "^\t*--\(------\)*>" contained
syn match notList4 "^\t*---\(------\)*>" contained
syn match notList5 "^\t*----\(------\)*>" contained
syn match notList6 "^\t*-----\(------\)*>" contained
syn cluster notListTag contains=notList1,notList2,notList3,notList4,notList5,notList6
syn match notList  "^\t*-*>[^\t]*$" contained contains=@notListTag,notNormal

syn match notChatIndicator "^\t*[0-6]>" contained
syn match notChat0 "^\t*0>.*$" contained contains=@notChatContentContent
syn match notChat1 "^\t*1>.*$" contained contains=@notChatContentContent
syn match notChat2 "^\t*2>.*$" contained contains=@notChatContentContent
syn match notChat3 "^\t*3>.*$" contained contains=@notChatContentContent
syn match notChat4 "^\t*4>.*$" contained contains=@notChatContentContent
syn match notChat5 "^\t*5>.*$" contained contains=@notChatContentContent
syn match notChat6 "^\t*6>.*$" contained contains=@notChatContentContent
syn cluster notChatContent contains=notChat0,notChat1,notChat2,notChat3,notChat4,notChat5,notChat6,notStamp
syn cluster notChatContentContent contains=@Spell,notQuote,notChatIndicator,notStamp,notWord,notEscapeWord

"syn region notQuoteLong   start="\"" end="\"" skip="\\." fold contains=@NoSpell
syn region notInputLong   start="`"  end="`"  fold contains=@notInputContent
syn region notSpecialLong start="^\~[^\t]*$" end="^[^\t]*\~$" fold contains=@notSpecialContent
"syn region notChat start="^@chat" end="^@\(chatend\|end\|$\)" fold contains=@notChatContent
"syn region notChat start="^@nofold chat" end="^@\(chatend\|end\|$\)" contains=@notChatContent
syn region notFold start="^\t*#\+[^\t]*$" end="^\t*#\+[^\t]*$"me=s-1  fold contains=ALLBUT,notFold,@notMark,notWord

hi! link notAdd MatchParen
hi! link notBase Todo
hi! link notRem IncSearch
hi! link notName PreProc

hi! notEmpty ctermfg=0
hi! notChatIndicator ctermfg=0
hi! link notStamp Tag
hi! link notQuote Constant
hi! link notMacro Function
hi! link notUrl Constant
hi! link notQuoteLong notQuote
"hi! notSeparator ctermfg=7

hi! link notTitle Title
hi! notTitle1 cterm=bold ctermfg=207
hi! notTitle2 cterm=bold ctermfg=14
hi! notTitle3 cterm=bold ctermfg=112
hi! notTitle4 cterm=bold ctermfg=3
hi! notTitle5 cterm=bold ctermfg=202
hi! notTitle6 cterm=bold ctermfg=197

hi! link notList1 notTitle1
hi! link notList2 notTitle2
hi! link notList3 notTitle3
hi! link notList4 notTitle4
hi! link notList5 notTitle5
hi! link notList6 notTitle6

hi! link notChat0 Folded
hi! link notChat1 notTitle1
hi! link notChat2 notTitle2
hi! link notChat3 notTitle3
hi! link notChat4 notTitle4
hi! link notChat5 notTitle5
hi! link notChat6 notTitle6

hi! link notInput Statement
hi! link notInputSmall notInput
hi! link notInputLong notInput
hi! link notFooBar Type
hi! link notSpecial Comment
hi! link notSpecialSmall notSpecial
hi! link notSpecialLong  notSpecial
