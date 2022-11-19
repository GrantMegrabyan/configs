" ============================================================================
" # PLUGINS
" =============================================================================
" Load vundle
set nocompatible
filetype off
" set rtp+=~/dev/others/base16/templates/vim/
call plug#begin()

" Load plugins
" GUI enhancements
" Bottom status line with useful info
Plug 'itchyny/lightline.vim'

" Lint engine for many languages
Plug 'dense-analysis/ale'

" Color scheme
Plug 'morhetz/gruvbox'

call plug#end()


" Lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Set color scheme
set background=dark
colorscheme gruvbox
syntax on


" =============================================================================
" # GUI settings
" =============================================================================
set guioptions-=T " Remove toolbar
set vb t_vb= " No more beeps
set backspace=2 " Backspace over newlines
set nofoldenable
set ttyfast
" https://github.com/vim/vim/issues/1735#issuecomment-383353563
set lazyredraw
set synmaxcol=500
set laststatus=2
set relativenumber " Relative line numbers
set number " Also show current absolute line
" set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
" set diffopt+=algorithm:patience
" set diffopt+=indent-heuristic
" set colorcolumn=80 " and give me a colored column
" set showcmd " Show (partial) command in status line.
set mouse=a " Enable mouse usage (all modes) in terminals
" set shortmess+=c " don't give |ins-completion-menu| messages.
