scriptencoding utf-8

colorscheme monokai

"set guifont=consolas:h10
"set guifontwide=MS_Gothic:h10
set guitablabel=%n:%t%m

set showtabline=2

"autocmd Vimenter * tab all
"autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"'



""""""""""""""""""""""""""""""
" Window位置の保存と復帰
""""""""""""""""""""""""""""""
if has('unix')
  let s:infofile = '~/.vim/.vimpos'
else
  "let s:infofile = '~/_vimpos'
  let s:infofile = '_vimpos'
endif

function! s:SaveWindowParam(filename)
  redir => pos
  exec 'winpos'
  redir END
  let pos = matchstr(pos, 'X[-0-9 ]\+,\s*Y[-0-9 ]\+$')
  let file = expand(a:filename)
  let str = []
  let cmd = 'winpos '.substitute(pos, '[^-0-9 ]', '', 'g')
  cal add(str, cmd)
  let l = &lines
  let c = &columns
  cal add(str, 'set lines='. l.' columns='. c)
  silent! let ostr = readfile(file)
  if str != ostr
    call writefile(str, file)
  endif
endfunction

augroup SaveWindowParam
  autocmd!
  execute 'autocmd SaveWindowParam VimLeave * call s:SaveWindowParam("'.s:infofile.'")'
augroup END

if filereadable(expand(s:infofile))
  execute 'source '.s:infofile
endif
unlet s:infofile


" IMEの状態をカラー表示
"if has('multi_byte_ime')
"  highlight Cursor guifg=NONE guibg=Green
"  highlight CursorIM guifg=NONE guibg=Purple
"endif
