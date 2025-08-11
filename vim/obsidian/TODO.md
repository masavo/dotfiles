# Obsidian Vimrc TODO - Unsupported Features

This document tracks the features from the original vimrc configuration that cannot be directly ported to obsidian-vimrc-support due to CodeMirror limitations.

## Original vimrc Unsupported Features

### NERDTree Settings
- `let NERDTreeShowHidden=1` - NERDTree plugin not available in Obsidian

### File Encoding Settings
- `set encoding=utf-8`
- `set fileencodings=uiso-2022-jp,euc-jp,sjis,tf-8`

### Display Settings
- `set number` - Line numbers
- `set ruler` - Cursor position display
- `set laststatus=2` - Status line
- `set listchars=tab:»-,eol:↲,extends:»,precedes:«,nbsp:%` - Special character display
- `set list` - Show special characters

### Tab/Indentation Settings
- `set tabstop=2`
- `set shiftwidth=2` 
- `set softtabstop=2`
- `set expandtab` - Convert tabs to spaces
- `set smartindent`
- `set autoindent`

### Syntax Highlighting
- `syntax on`
- `set t_Co=256`

### File Type Commands
- `au FileType uml command! uml :!open Arc %`

### Search Settings
- `set wrapscan`
- `set backspace=indent,eol,start`
- `set incsearch`
- `set wildmenu`
- `set wildmode=list:longest,full`

### File Management
- `set noswapfile`
- `set scrolloff=6`

### Performance Settings
- `set synmaxcol=300`
- `set lazyredraw`
- `set ttyfast`

### Auto Commands
- `autocmd BufWritePre * :%s/\\s\\+$//ge` - Remove trailing whitespace

### Complex Visual Mode Mappings
- Multi-line visual selection helpers
- Complex search and replace patterns

### Plugin Sourcing
- `source ~/dotfiles/vim/vim_extend/dein.vim`
- `source ~/dotfiles/vim/color-scheme.vim`
- Various extension files

### Completion Settings
- Complex completion menu configurations

## vim_base_config Unsupported Features

### Complex Window Switching (mapping.vim:82-108)
```vim
" These complex window mappings are not supported
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
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
```

### Window Resizing with Ctrl Keys (mapping.vim:144-151)
```vim
" Window resize mappings conflict with Obsidian shortcuts
nnoremap <C-H> :vertical resize +2<CR>
nnoremap <C-J> :resize +2<CR>
nnoremap <C-K> :resize -2<CR>
nnoremap <C-L> :vertical resize -2<CR>
```

### Special Terminal Sequences
- `noremap <C-@> <ESC>` - Ctrl+@ escape mapping
- `noremap! <C-@> <ESC>`

### Insert Mode Navigation (mapping.vim:27-31)
```vim
" CodeMirror limitations prevent these
noremap! <C-f> <Right>
noremap! <C-b> <Left>
noremap! <C-d> <Del>
noremap! <C-h> <BS>
```

### Visual Paste Without Register Override (mapping.vim:129-131)
```vim
" Complex register handling not supported
xnoremap p "_dP
vnoremap p "_dP
```

### Complex Submode Buffer Moving (mapping.vim:109-116)
```vim
" Submode plugin functionality not available
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
" ... (additional submode configurations)
```

### Buffer and Register Lists (mapping.vim:123-124)
```vim
" Interactive buffer/register selection not supported
nnoremap <silent> <Leader>l :ls<CR>:b<Space>
nnoremap <silent> <Leader>r :reg<CR>:put<Space>
```

### Line Deletion with Ctrl+K (mapping.vim:154-155)
```vim
" Conflicts with Obsidian shortcuts
noremap <C-k> d<End>
noremap! <C-k> <ESC>d$i
```

## Custom Commands (commands.vim)

### File Editing Shortcuts
```vim
" Custom Ex commands not supported in CodeMirror
command! Tml :edit ~/dotfiles/vim/vim_extend/dein.toml
command! Vrc :edit ~/.vimrc
```

## Window Split Configuration (window-split-config.vim)

### Split Direction Settings
```vim
" CodeMirror doesn't support these global settings
set splitbelow " New windows open below
set splitright " New windows open to the right
```

## File Type Detection (bufnewfile.vim)

### Auto Commands for File Types
```vim
" File type detection not available in Obsidian
autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx
autocmd bufnewfile,bufread *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.fish  set filetype=fish
autocmd BufNewFile,BufRead *.html.slim  set filetype=slim
autocmd BufNewFile,BufRead *.schema  set filetype=ruby
autocmd BufNewFile,BufRead Schemafile  set filetype=ruby
autocmd BufNewFile,BufRead *.sql.job  set filetype=sql
autocmd BufNewFile,BufRead *.ct  set filetype=sql
```

## Potential Workarounds

Some of these features might be addressable through:

1. **Obsidian Plugin Integration**: Using `obcommand` to integrate with other Obsidian plugins
2. **JavaScript Extensions**: Using `jscommand` or `jsfile` for custom functionality (security risk)
3. **CSS Snippets**: For visual customizations like line numbers or status display
4. **Obsidian Settings**: Some display preferences can be configured in Obsidian itself

## References

- [obsidian-vimrc-support README](https://github.com/esm7/obsidian-vimrc-support)
- [CodeMirror Vim Implementation](https://github.com/replit/codemirror-vim)
- [Obsidian API Documentation](https://github.com/obsidianmd/obsidian-api)