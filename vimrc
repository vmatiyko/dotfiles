
execute pathogen#infect()

set nocompatible
set noswapfile

syntax enable

set t_Co=256 "256 colors

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
set term=screen-256color
colorscheme vividchalk 
let g:solarized_termcolors=256
highlight SignColumn ctermbg=0
set colorcolumn=80

set tabstop=2
set shiftwidth=2
set expandtab

filetype plugin indent on

set nobackup
set nowritebackup
set directory=$HOME/.vim/tmp//,.

set number
set numberwidth=5
set laststatus=2

set ignorecase
set smartcase

set incsearch
set hlsearch

set backspace=2
" set iskeyword-=_ "for ruby

" correct splits
set splitright
set splitbelow

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FORGET ABOUT ARROW KEYS 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HANDY WINDOW NAVIGATION 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Handy stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"save

nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" Move to last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Better indent / outdent
vmap < <gv
vmap > >gv

" toggle autoindent
:nnoremap <F8> :setl noai nocin nosi inde=<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" POWERLINE SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Powerline_symbols = 'fancy'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRL-P
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\vnode_modules$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ACK
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ackprg="ack -H --nocolor --nogroup --column"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTAGS autoregenerate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePost *
      \ if filereadable('tags') |
      \   call system('ctags -a '.expand('%')) |
      \ endif
