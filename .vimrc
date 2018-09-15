if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
  Plug 'w0rp/ale'
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'kien/ctrlp.vim'
  Plug 'othree/es.next.syntax.vim'
  Plug 'othree/html5.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'nanotech/jellybeans.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ervandew/supertab'
  Plug 'SirVer/ultisnips'
  Plug 'vim-airline/vim-airline'
  Plug 'jbgutierrez/vim-better-comments'
  Plug 'tpope/vim-bundler'
  Plug 'gko/vim-coloresque'
  Plug 'qualiabyte/vim-colorstepper'
  Plug 'isRuslan/vim-es6'
  Plug 'davidyorr/vim-es6-unused-imports'
  Plug 'kern/vim-es7'
  Plug 'fcpg/vim-fahrenheit'
  Plug 'neoclide/vim-jsx-improve'
  Plug 'crusoexia/vim-monokai'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'moll/vim-node'
  Plug 'prettier/vim-prettier'
  Plug 'digitaltoad/vim-pug'
  Plug 'tpope/vim-rails'
  Plug 'honza/vim-snippets'
  Plug 'wakatime/vim-wakatime'
call plug#end()

let mapleader = "\<Space>"
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set background=dark
set foldmethod=manual
colorscheme monokai
set t_Co=256 
hi Comment ctermfg=Yellow
set nu

"WHEN I'M NOT TEACHING
"colorscheme gruvbox
"set number relativenumber
"augroup numbertoggle
"  autocmd!
"  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"augroup END
"let g:indentLine_char = '.'

set title
set foldmethod=indent
set nofoldenable
set foldlevel=2
set backspace=indent,eol,start
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:bettercomments_language_aliases = { 'javascript': 'js' }

nnoremap <down> :m .+1<CR>==
nnoremap <up> :m .-2<CR>==
vnoremap <down> :m '>+1<CR>gv=gv
vnoremap <up> :m '<-2<CR>gv=gv

nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

map <C-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <Leader>f :IndentLinesToggle<CR>

let JSHintUpdateWriteOnly=1
let g:JSHintHighlightErrorLine = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:jsx_ext_required = 0
let g:es6_imports_excludes = ['React']
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
au BufNewFile,BufRead *.ejs set filetype=html

nmap <F6> <Plug>ColorstepPrev
nmap <F7> <Plug>ColorstepNext
nmap <S-F7> <Plug>ColorstepReload
hi link xmlEndTag xmlTag

autocmd Filetype json let g:indentLine_setConceal = 0

"autocmd BufWritePost *.js execute "ES6ImportsHighlight"
"autocmd BufWinEnter *.js execute "ES6ImportsHighlight"
