" .vimrc
" Tyler Mulligan <z@interwebninja.com>
" Last Updated 10/13/2010                 

filetype off
call pathogen#infect()
filetype plugin indent on

" Environment Basics
set nocompatible        " don't keep vi bugs
set shortmess+=I        " remove splash
set virtualedit=all     " free roaming cursor
set paste               " sane pasting
set mouse=iv            " auto mouse
set ruler               " show cursor position
set number              " line numbers
set history=100         " history
set background=dark     " assume dark background
set t_Co=256            " 256 color support   
syntax enable           " hightlighing
colorscheme railscasts  " railscasts theme

" Tabs
set noautoindent        " in favor of smart
set smartindent         " go with the flow
set tabstop=4           " normal tabs
set softtabstop=4       " normal tabs
set shiftwidth=4        " normal tabs
set expandtab           " tabs to spaces

" Better Editor
set showmatch           " braces
set incsearch           " search as you type
set wrap                " wrap text
set wildmenu            " show commands at the bottom
set wildmode=list:longest,full


" Simplify splitting hotkeys
map <C-H> <C-W>h<C-W>_
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_

" sudo saver
command W w !sudo tee % > /dev/null

" SuperTab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" Omnomnomnom
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
  endif
endif

" Zen Coding
let g:user_zen_leader_key = '<c-e>'
let g:user_zen_settings = {
\  'php' : {
\    'extends' : 'html',
\    'filters' : 'c',
\  },
\  'xml' : {
\    'extends' : 'html',
\  },
\  'haml' : {
\    'extends' : 'html',
\  },
\}

au BufNewFile,BufRead,BufEnter   *.wiki      setlocal spell    spelllang=de_de
au BufNewFile,BufRead,BufEnter   *.md        setlocal spell    spelllang=de_de
au BufNewFile,BufRead,BufEnter   *.txt       setlocal spell    spelllang=de_de
au BufNewFile,BufRead,BufEnter   README    	 setlocal spell    spelllang=en_us
au BufNewFile,BufRead,BufEnter   LIESMICH    setlocal spell    spelllang=de_de
au BufNewFile,BufRead,BufEnter   *.html      setlocal spell    spelllang=de_de