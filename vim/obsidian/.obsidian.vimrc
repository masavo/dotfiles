" Obsidian Vim Configuration
" Based on ~/dotfiles/vim/vimrc

" Basic settings
let mapleader = " "

" Basic editor settings that work in CodeMirror Vim
set clipboard=unnamed
set ignorecase
set smartcase
set hlsearch

" Key mappings
" Clear search highlighting
nmap <Esc><Esc> :nohls<CR>

" TODO: The following features from vimrc are not supported in obsidian-vimrc-support:
" - NERDTree settings (let NERDTreeShowHidden=1)
" - File encoding settings (set encoding=utf-8, set fileencodings)
" - Display settings (set number, set ruler, set laststatus, set listchars, set list)
" - Tab/indentation settings (tabstop, shiftwidth, softtabstop, expandtab, smartindent, autoindent)
" - Syntax highlighting (syntax on, set t_Co=256)
" - File type autocmds (au FileType uml command!)
" - Search settings (set wrapscan, set backspace, set incsearch, set wildmenu, set wildmode)
" - File management (set noswapfile, set scrolloff)
" - Performance settings (set synmaxcol, set lazyredraw, set ttyfast)
" - Auto commands (autocmd BufWritePre)
" - Complex visual mode mappings
" - Plugin sourcing (dein.vim, color-scheme.vim, extensions)
" - Base config sourcing (mapping.vim, window-split-config.vim, bufnewfile.vim)
" - Completion settings
" - Custom key bindings (noremap <C-k>)

" Supported mappings from vim_base_config/mapping.vim
" Emacs-like cursor movement
noremap <C-e> <End>
noremap <C-a> <Home>

" Line movement (visual lines)
nmap j gj
nmap k gk

" Quick save and quit
nmap <Leader>c :wq<CR>
nmap <Leader>q :wqa<CR>

" Edit current directory
nmap <Leader>h :edit %:h<CR>

" Visual selection helpers
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Reselect pasted text
noremap gV `[v`]

" JIS keyboard helper
noremap ' :
vnoremap ' :

" Obsidian-specific enhancements
exmap back obcommand app:go-back
exmap forward obcommand app:go-forward
nmap <C-o> :back<CR>
nmap <C-i> :forward<CR>

exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold<CR>
nmap zc :togglefold<CR>
nmap za :togglefold<CR>

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall<CR>

exmap foldall obcommand editor:fold-all
nmap zM :foldall<CR>

exmap tabnext obcommand workspace:next-tab
nmap gt :tabnext<CR>
exmap tabprev obcommand workspace:previous-tab
nmap gT :tabprev<CR>

exmap splitvertical obcommand workspace:split-vertical
exmap splithorizontal obcommand workspace:split-horizontal

" Navigate between headings (default in plugin)
" [[ and ]] are already provided

" TODO: The following mappings from vim_base_config are NOT supported:
" - Complex window switching mappings (s + hjkl combinations)
" - Buffer navigation (sN, sP, st, ss, sv, sq, sQ)
" - Window resizing with Ctrl+H/J/K/L (resize commands)
" - Ctrl+@ escape mapping (special terminal sequence)
" - Ctrl+f/b/d/h insert mode mappings (CodeMirror limitations)
" - Visual paste without overwriting register (xnoremap p "_dP)
" - Complex submode buffer moving
" - Buffer list mapping (<Leader>l :ls)
" - Register list mapping (<Leader>r :reg)
" - Ctrl+k line deletion (conflicts with Obsidian shortcuts)

" TODO: Commands from vim_base_config/commands.vim are NOT supported:
" - Custom Ex commands (command! Tml, command! Vrc)
" - File editing shortcuts to specific config files

" TODO: Settings from vim_base_config/window-split-config.vim are NOT supported:
" - splitbelow and splitright settings (CodeMirror doesn't support these)

" TODO: File type detection from vim_base_config/bufnewfile.vim is NOT supported:
" - autocmd bufnewfile/bufread for tsx, jsx, fish, slim, schema, sql files
" - File type specific settings