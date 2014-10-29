
set shell=bash
set nocompatible
filetype off

set t_Co=256

" molokai theme config
let g:rehash256 = 1

" airline config
let g:airline_theme = 'powerlineish'
let g:airline_enable_branch = 1
let g:airline_powerline_fonts = 0
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_alt_sep = '|'
let g:airline_enable_syntastic = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'


" Plugins from Vundle (:BundleInstall)
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
Bundle 'gmarik/vundle'
" Bundle 'git://git.wincent.com/command-t.git'
Bundle 'tomtom/tcomment_vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jcf/vim-latex.git'
Bundle 'git://github.com/majutsushi/tagbar.git'
Bundle 'bling/vim-airline'
Bundle 'tkztmk/vim-vala'
Bundle 'digitaltoad/vim-jade'
Bundle 'tomasr/molokai'
" Bundle 'altercation/vim-colors-solarized'
Bundle 'ciaranm/detectindent'
Bundle 'scrooloose/syntastic'
" Bundle 'evidens/vim-twig'
" Bundle 'marijnh/tern_for_vim'
" Bundle 'skammer/vim-css-color'
Bundle 'kien/ctrlp.vim'
" Bundle 'fatih/vim-go'

set background=dark
colorscheme molokai

let mapleader=','
let maplocalleader=','

set laststatus=2

let g:ctrlp_map = '<c-s-x>'
" map <c-s-x> :CtrlPBuffer<CR>

let g:tagbar_ctags_bin = "anjuta-tags"
set wildignore+=*/build/*,*.in

filetype plugin on
filetype plugin indent on

syntax enable

autocmd BufReadPost * :DetectIndent 
au BufRead,BufNewFile *.md set filetype=markdown

set completeopt-=preview

" some default settings
set backspace=indent,eol,start
set shiftwidth=4
set tabstop=4
set nobackup
set history=50
set ruler
set showcmd
set incsearch
set nu
set hlsearch
set dir=~/.vim/tmp//
set smartcase
set scrolloff=10

" code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" go stuff
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)

" tComment
map <Leader>c <c-_><c-_>
" give us NERDTree
map <F2> :NERDTree<CR>
" open the Tagbar
nmap <F8> :TagbarToggle<CR>

" if we press escape and then O for example, don't wait that long for an
" escape sequence
set ttimeoutlen=100

" Vala related stuff
autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala

" Syntastic config
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

" save as root
command W w !sudo tee % >/dev/null

" Get us a mouse
if has('mouse')
  set mouse=a
endif

" Reopen at last position if possible
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif

" gui settings
set guioptions-=M
set guioptions-=T
set guioptions-=R
set guioptions-=L
set guioptions-=b

" latex
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'

" experiments
nnoremap - ddp
nnoremap + ddP
inoremap jk <esc>
" inoremap <esc> <nop>
