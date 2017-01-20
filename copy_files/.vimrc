set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'fatih/vim-go'
Bundle 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'groenewege/vim-less'
Plugin 'mileszs/ack.vim'
Plugin 'dkprice/vim-easygrep'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 0

" Linting
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8']

" Ignore 'docstring missing' (for pep257)
let g:pymode_lint_ignore = "D100,D101,D102,D103"

" Auto check on save
let g:pymode_lint_write = 1
let g:pymode_options_max_line_length = 100

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Don't automatically popup autocompletion (because it's slow)
let g:jedi#popup_on_dot = 0

set expandtab
set tabstop=4
set shiftwidth=4

set autoindent
set smartindent

" turn on line numbers
set number

" 256 colors
set t_Co=256

set wildmenu
highlight Normal guibg=black ctermbg=black ctermfg=white

" Remove menu bar
set guioptions-=m

" Remove toolbar
set guioptions-=T

syntax on

" don't use spaces for makefiles
autocmd FileType make set noexpandtab

" set html tab-width to 2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2

" set javascript tab-width to 2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

colorscheme desert256

set hlsearch
set ignorecase
set scs " smart search (override 'ignorecase' when pattern has uppers)
set incsearch

map <F6> :set hls!<CR>

" enable mouse
set mouse=a

map <F5> :CommandT<CR>

" make yank and paste use the clipboard
set clipboard=unnamed

" show cursor position
set ruler

" highlight trailing whitespace characters
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" less-css syntax highlighting
au BufNewFile,BufRead *.less set filetype=less

" Cursor line
set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkgrey

"pdb macro
let @p='Oimport pdb;pdb.set_trace()'

let mapleader=","

" Make Ack use ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
