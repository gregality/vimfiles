" Manage runtime with Pathogen
execute pathogen#infect()
syntax on

" Set colorscheme
syntax enable
set background=dark
" Cloned from... https://github.com/sickill/vim-monokai.git 
colorscheme monokai
" Cloned from... https://github.com/chriskempson/base16-vim.git
"colorscheme base16-default

" Show line numbers
set number

" Show partial commands in the last line of the screen
set showcmd

" Default new files to utf-8 encoding
set encoding=utf-8

" Use case insensitive search except when using capital letters
set ignorecase
set smartcase

" Use the ftplugin files (where I have indentation rules for python, for
" example)
filetype plugin indent on

" Highlight searches
set hlsearch

" Map escape to jk
"inore jk <ESC>

" Set initial screen size
set lines=65 columns=195

" Change font and size
if has('gui_running')
  set guifont=Lucida_Console:h10:cANSI
endif

" Map NERDTree to Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Change cwd when open file 
set autochdir

" Switch buffers without saving current file
set hidden

" Underline current line
function! s:Underline(chars)
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call s:Underline(<q-args>)
