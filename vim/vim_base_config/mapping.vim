
" mapping
":map   :noremap  :unmap     $B%N!<%^%k!"%S%8%e%"%k!"A*Br!"%*%Z%l!<%?BT5!(B
":nmap  :nnoremap :nunmap    $B%N!<%^%k(B
":vmap  :vnoremap :vunmap    $B%S%8%e%"%k!"A*Br(B
":smap  :snoremap :sunmap    $BA*Br(B
":xmap  :xnoremap :xunmap    $B%S%8%e%"%k(B
":omap  :onoremap :ounmap    $B%*%Z%l!<%?BT5!(B
":map!  :noremap! :unmap!    $BA^F~!"%3%^%s%I%i%$%s(B
":imap  :inoremap :iunmap    $BA^F~(B
":lmap  :lnoremap :lunmap    $BA^F~!"%3%^%s%I%i%$%s!"(BLang-Arg
":cmap  :cnoremap :cunmap    $B%3%^%s%I%i%$%s(B
":tmap  :tnoremap :tunmap    $BC<Kv%8%g%V(B

" ----- Start to emacsnize

""""""""""""""""""""""""""""""""""""""""
" mapping: emacs like
""""""""""""""""""""""""""""""""""""""""
noremap <C-e> <End>
noremap <C-a> <Home>
noremap! <C-e> <End>
" increment: errorが出るので一時的に停止
" noremap <C-s> <C-a>

" normalMode$B$G$O(Bscroll$B$7$?$$$N$G3d$jEv$F$F$$$J$$(B
noremap! <C-f> <Right>
noremap! <C-b> <Left>
noremap! <C-d> <Del>
noremap! <C-h> <BS>
nnoremap <C-p> <Up>
" ----- End of emacsnize

""""""""""""""""""""""""""""""""""""""""
" mapping: edit vimrc
""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>c :wq<CR>
nnoremap <Leader>q :wqq<CR>
nnoremap <Leader>ve :edit $MYVIMRC<CR>
nnoremap <Leader>vs :source $MYVIMRC<CR>

""""""""""""""""""""""""""""""""""""""""
" mapping: editting
""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>s :s<CR>

""""""""""""""""""""""""""""""""""""""""
" plugin setting: yank copy
""""""""""""""""""""""""""""""""""""""""
" $BE=$jIU$1$?%F%-%9%H$NKvHx$X<+F0E*$K0\F0(B
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" $BE=$jIU$1$?$b$N$r$9$P$d$/A*Br$9$k(B
noremap gV `[v`]

""""""""""""""""""""""""""""""""""""""""
" plugin setting: Start to line-movng
""""""""""""""""""""""""""""""""""""""""
" $B@^$jJV$79T0\F0(B
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap <CR> G
nnoremap <BS> gg

""""""""""""""""""""""""""""""""""""""""
" plugin setting:  useing JIS and US keyboard
""""""""""""""""""""""""""""""""""""""""
nnoremap ' :
vnoremap ' :
noremap <C-@> <ESC>
noremap! <C-@> <ESC>


""""""""""""""""""""""""""""""""""""""""
" switch window
""""""""""""""""""""""""""""""""""""""""
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
" nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
" nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
" nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

" call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
" call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
" call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
" call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
" call submode#map('bufmove', 'n', '', '>', '<C-w>>')
" call submode#map('bufmove', 'n', '', '<', '<C-w><')
" call submode#map('bufmove', 'n', '', '+', '<C-w>+')
" call submode#map('bufmove', 'n', '', '-', '<C-w>-')


""""""""""""""""""""""""""""""""""""""""
" enhancing settings
""""""""""""""""""""""""""""""""""""""""
" buffer list
nnoremap <silent> <Leader>l :ls<CR>:b<Space>
nnoremap <silent> <Leader>r :reg<CR>:put<Space>

""""""""""""""""""""""""""""""""""""""""
" mapping: paste
""""""""""""""""""""""""""""""""""""""""
" for vscode
xnoremap p "_dP
vnoremap p "_dP

""""""""""""""""""""""""""""""""""""""""
" mapping: edit
""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>h :edit %:h<CR>
nnoremap <Leader>q :wqa<CR>
nnoremap <Leader>c :wq<CR>


""""""""""""""""""""""""""""""""""""""""
" mapping: edit
""""""""""""""""""""""""""""""""""""""""
" Increase the width of the current window to the left
nnoremap <C-H> :vertical resize +2<CR>
" Increase the height of the current window downwards
nnoremap <C-J> :resize +2<CR>
" Increase the height of the current window upwards
nnoremap <C-K> :resize -2<CR>
" Increase the width of the current window to the right
nnoremap <C-L> :vertical resize -2<CR>

" vscodeで読み込むときにC-Kがじゃまになるっぽい?
noremap <C-k> d<End>
noremap! <C-k> <ESC>d$i
