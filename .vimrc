set nocompatible

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

filetype indent on
syntax on

" don't use spaces for makefiles
autocmd FileType make set noexpandtab

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

