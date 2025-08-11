" tarminal mode
if has('nvim')
  " Neovim 用
  " TODO splitしたい
  autocmd TermOpen term://* startinsert
  " tnoremap <Esc> <C-\><C-n>
  " noremap :te :split term://fish
  " autocmd WinEnter * if &buftype == 'terminal' | :startinsert | endif
  " tmap <C-W>N <C-\><C-n>
  " tmap <C-W>h <C-W>h
  " TODO 微妙に遅いので、なんとかしたい
  tnoremap <C-w>h <C-\><C-n><C-w>h
  tnoremap <C-w>j <C-\><C-n><C-w>j
  tnoremap <C-w>k <C-\><C-n><C-w>k
  tnoremap <C-w>l <C-\><C-n><C-w>l
  inoremap <C-w>h <C-\><C-n><C-w>h
  inoremap <C-w>j <C-\><C-n><C-w>j
  inoremap <C-w>k <C-\><C-n><C-w>k
  inoremap <C-w>l <C-\><C-n><C-w>l
  " When forcus insert mode
  " https://github.com/neovim/neovim/issues/8816
  let g:previous_window = -1
  function SmartInsert()
    if &buftype == 'terminal'
      if g:previous_window != winnr()
        startinsert
      endif
      let g:previous_window = winnr()
    else
      let g:previous_window = -1
    endif
  endfunction

  au BufEnter * call SmartInsert()
else
  " Vim 用
  tmap <C-W>' <C-W>N
endif

