" à faire manuellement
" modifier le code source de certains plugins Vim,
" notammen pour les raccourcis clavier

" NERDCommenter
function! s:CreateMaps(modes, target, desc, combo)
    " Build up a map command like
    " 'noremap <silent> <plug>NERDCommenterComment :call NERDComment("n", "Comment")'
    let plug = '<plug>NERDCommenter' . a:target
    let plug_start = 'noremap <silent> ' . plug . ' :call NERDComment("'
    let plug_end = '", "' . a:target . '")<cr>'
    " Build up a menu command like
    " 'menu <silent> comment.Comment<Tab>\\cc <plug>NERDCommenterComment'
    let menuRoot = get(['', 'comment', '&comment', '&Plugin.&comment'],
                \ g:NERDMenuMode, '')
    let menu_command = 'menu <silent> ' . menuRoot . '.' . escape(a:desc, ' ')
    if strlen(a:combo)
        let leader = exists('g:mapleader') ? g:mapleader : '\'
        let menu_command .= '<Tab>' . escape(leader, '\') . a:combo
    endif
    let menu_command .= ' ' . (strlen(a:combo) ? plug : a:target)
    " Execute the commands built above for each requested mode.
    for mode in (a:modes == '') ? [''] : split(a:modes, '\zs')
        if strlen(a:combo)
            execute mode . plug_start . mode . plug_end
            if g:NERDCreateDefaultMappings && !hasmapto(plug, mode)
                "execute mode . 'map <leader>' . a:combo . ' ' . plug
                execute mode . 'map q' . a:combo . ' ' . plug
            endif
        endif
        " Check if the user wants the menu to be displayed.
        if g:NERDMenuMode != 0
            execute mode . menu_command
        endif
    endfor
endfunction
call s:CreateMaps('nx', 'Comment',    'Comment', 'h.')
call s:CreateMaps('nx', 'Toggle',     'Toggle', 'k')
call s:CreateMaps('nx', 'Minimal',    'Minimal', 'h-')
call s:CreateMaps('nx', 'Nested',     'Nested', 'h+')
call s:CreateMaps('n',  'ToEOL',      'To EOL', 'hp')
call s:CreateMaps('nx', 'Invert',     'Invert', 'hu')
call s:CreateMaps('nx', 'Sexy',       'Sexy', 'hh')
call s:CreateMaps('nx', 'Yank',       'Yank then comment', 'hy')
call s:CreateMaps('n',  'Append',     'Append', 'ha')
call s:CreateMaps('',   ':',          '-Sep-', '')
call s:CreateMaps('nx', 'AlignLeft',  'Left aligned', 'hé')
call s:CreateMaps('nx', 'AlignBoth',  'Left and right aligned', 'hè')
call s:CreateMaps('',   ':',          '-Sep2-', '')
call s:CreateMaps('nx', 'Uncomment',  'Uncomment', 'h,')
call s:CreateMaps('n',  'AltDelims',  'Switch Delimiters', 'y')
call s:CreateMaps('i',  'Insert',     'Insert Comment Here', 'hi')
call s:CreateMaps('',   ':',          '-Sep3-', '')
call s:CreateMaps('',   ':help NERDCommenterContents<CR>', 'Help', 'h?')
