set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'surround.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'ZoomWin'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tComment'
Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'delimitMate.vim'
Plugin 'moll/vim-node'
Plugin 'rails.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'digitaltoad/vim-jade'
Plugin 'wincent/command-t'
"Plugin 'Tagbar'

call vundle#end()
filetype plugin indent on    " required
filetype on
""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile
set encoding=utf-8
syntax on
set rnu
let mapleader=" "
set textwidth=80
set colorcolumn=+1

"colors
colorscheme molokai
let g:rehash256 = 1
set t_Co=256
set cursorline

"tabs
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

"search
set nohls
set incsearch
set ignorecase
set smartcase

"tags
"set tags=tags;/

"scrolling
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"buffers
set hidden
nmap <leader>T :enew<cr>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>"
nmap <leader>n :noh<CR>
nmap <leader>t :NERDTreeTabsToggle<CR>
nmap <leader>tq :tabclose<CR>
nmap <leader>r :source ~/.vim/vimrc<CR>
nmap <leader>g :NERDTreeTabsFind<CR>

nmap <C-S-f> :Ack<space>
map <S-y> "*y
nmap <leader>p "*p
nmap <leader><S-p> "*<S-p>
nmap <C-b> <C-]>
nmap <C-s> :w<cr>

if bufwinnr(1)
  map <Down> <C-W>+
  map <Up> <C-W>-
  map <Right> <C-W><
  map <Left> <C-W>>
endif

"useful remappings
command! W w
command! Q q
command! Q quit<bang>
command! Qa qa<bang>
command! WQ wq<bang>
command! Wq wq<bang>
command! WQ wq<bang>

"jsx
let g:jsx_ext_required = 0

"Syntastic
let g:syntastic_javascript_checkers = ['eslint']

"SnipMate
let g:snipMate = get(g:, 'snipMate', {})
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['javascript.jsx'] = 'javascript.jsx,html'

"CtrlP
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_root_markers = ['.ctrlp']
"let g:ctrlp_extensions = ['tag']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

"CommandT
map <C-n> :CommandT<cr>
let g:CommandTWildIgnore=&wildignore . ',**/openrest-js/lib/*,**/openrest-js/coverage/*'
let g:CommandTCancelMap='<esc>'

"nerd-tree-tabs
let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeIgnore=['node_modules']
let g:NERDTreeChDirMode       = 2

set backspace=2

"Highlight in NERDTree the active buffer
"autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif

"******************************************************
                  "EasyMotion"
"******************************************************

" let g:EasyMotion_do_mapping = 0 " Disable default mappings
"
" " Jump to anywhere you want with minimal keystrokes, with just one key binding.
" " `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" " or
" " `s{char}{char}{label}`
" " Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-overwin-f2)
"
" " Turn on case insensitive feature
" let g:EasyMotion_smartcase = 1
"
" " JK motions: Line motions
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)

"*****************************************************"
"*****************************************************"

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
 endif

     " unicode symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '«'
 let g:airline_right_sep = '◀'
 let g:airline_symbols.linenr = '␊'
 let g:airline_symbols.linenr = '␤'
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.branch = '⎇'
 let g:airline_symbols.paste = 'ρ'
 let g:airline_symbols.paste = 'Þ'
 let g:airline_symbols.paste = '∥'
 let g:airline_symbols.whitespace = 'Ξ'

 " airline symbols
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
 let g:airline_symbols.branch = ''
 let g:airline_symbols.readonly = ''
 let g:airline_symbols.linenr = ''
