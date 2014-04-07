" With a map leader it's possible to do extra key combinations
" leader is press comma (,) key
" like <leader>w saves the current file
let mapleader=","
let g:mapleader=","


set nocompatible " be iMproved
filetype off                   " required!
filetype plugin indent on     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Files manager
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'L9'
Bundle 'vim-scripts/FuzzyFinder'

" code checkers
Bundle 'hdima/python-syntax'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'scrooloose/syntastic'
Bundle 'kevinw/pyflakes-vim'
Bundle 'vim-scripts/pep8'
Bundle 'vim-scripts/pylint'
" code dictionary
Bundle 'vim-scripts/Pydiction'
" code completion
Bundle 'Valloric/YouCompleteMe'
Bundle 'davidhalter/jedi-vim'

" docs
Bundle 'fs111/pydoc.vim'

" Color scheme
Bundle 'cschlueter/vim-mustang'

" utilities
Bundle 'Raimondi/delimitMate'

" editors
Bundle 'Rykka/riv.vim'
Bundle 'plasticboy/vim-markdown'

" INSTALLED PACKAGES
" =========================================
" Color scheme Mustang : http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484
" Syntastic :https://github.com/scrooloose/syntastic
" FuzzyFinder : http://www.vim.org/scripts/script.php?script_id=1984
" L9 : http://www.vim.org/scripts/script.php?script_id=3252
" Pyflakes : https://github.com/kevinw/pyflakes-vim
" Pep8 : https://github.com/vim-scripts/pep8
" NerdTree : https://github.com/scrooloose/nerdtree
" NerdCommenter : https://github.com/scrooloose/nerdcommenter
" Tagbar : https://github.com/majutsushi/tagbar
" Sparkup : http://jetpackweb.com/blog/2010/03/04/write-html-faster-with-sparkup-vim-and-textmate/
" UltiSnips : http://www.vim.org/scripts/script.php?script_id=2715, 
"             http://fueledbylemons.com/blog/2011/07/27/why-ultisnips/
" MRU    : https://github.com/vim-scripts/mru.vim
" Tagbar : https://github.com/majutsushi/tagbar
" NeoComplcache : https://github.com/Shougo/neocomplcache
" IndentPython : https://github.com/vim-scripts/indentpython.vim
" Fugitive : https://github.com/tpope/vim-fugitive

" Key Shorcuts by Default
" Leader                = ,
" MRU                   = , + space
" Pep8                  = F6
" FileManager + Tagbar  = F8
" FileManager           = , + t
" FuzzFinder Files      = , + m
" FuzzFinder Buffer     = , + b
" File Explorer         = , + t
" Tagbar                = , + l
" 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ===> all sets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=1000

" Ignore some file
set wildignore=*.swp,*.bak,*.pyc,*.class

" Set to auto read when a file is changed from the outside
set autowrite


" tabs and spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab

" code fold
set foldmethod=indent
set foldlevel=99

set lbr " set linebreak
set tw=500 " set textwidth=500

set ai "set autoindent
set si " set smartindent
set wrap "Wrap lines

set wildmenu
set wildmode=list:full " it once was set wildmode=list:longest,full

" Scroll when cursor gets within 3 characters of top/bottom edge
set so=3            " set scrolloff=3,光标上下移动距底端距离

set ruler           "Always show current position
set nohidden
set mouse=v
" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set nolazyredraw "Don't redraw while executing macros 
set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them

" No sound on errors
set noerrorbells
set novisualbell
set tm=500 "set tmenu=500


set shell=/bin/bash

set guioptions-=T
set background=dark

" colorscheme mustang
set gfn=Liberation\ Mono\ 10 

" Use UTF-8 as the default buffer encoding
set encoding=utf8

try
    lang en_US
catch
endtry

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=43
  set co=87
endif

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" Useful when moving accross long lines
map j gj
map k gk

set cmdheight=1               " Explicitly set the height of the command line
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set title                     " show title in console title bar
set pastetoggle=<F3>          " Press F3 for toggle paste mode
set cursorline
set colorcolumn=80 " Mark 80th column with a red line


"--- search options ------------
set incsearch       " show 'best match so far' as you type
set hlsearch        " hilight the items found by the search
set ignorecase      " ignores case of letters on searches
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters

" Search and error color highlights
hi Search guifg=#ffffff guibg=#0000ff gui=none ctermfg=white ctermbg=darkblue
hi IncSearch guifg=#ffffff guibg=#8888ff gui=none ctermfg=white
highlight SpellBad guifg=#ffffff guibg=#8888ff gui=none ctermfg=black ctermbg=darkred

" ctags
set tags=tags;
" set autochdir


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ===> all maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map ; to "
nnoremap ; :

" quick back to normal mode from insert mode
inoremap jj <ESC>

" GRB: clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<CR>/<BS>
" get the same function as before
" map <silent> <leader><space> :nohlsearch<cr>

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" The best thing here! 
" In insert mode, you can paste from clipboard using CTRL+v
inoremap <C-v> <ESC>:set paste<CR>"+gp<ESC>:set nopaste<ENTER>i<RIGHT>

" Execute Python file being edited with <Shift> + e:
nnoremap E w:<CR>:!python % <CR>

" Fast saving with leader + w
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" set the current word upper both in insert and normal mode
inoremap <c-u> <esc>viwUea
" remove ctrl+u, cause conflicted to vi's shortcuts
" nnoremap <c-u> viwUe

noremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>< viw<esc>a><esc>hbi<<esc>lel
nnoremap <leader>> viw<esc>a><esc>hbi</<esc>lel

" good mappings for split windows jumping
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <c--> ddkP
noremap <c-+> ddp

" nomap arrows
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" error when using complates <C-p>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" map :tabprevious to gy
noremap gy :tabprevious<cr>


" delete sth between ()
onoremap p i(
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>

" delete the current line to the line before the return line
onoremap b /return<cr>

" Taken From http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
autocmd FileType python highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
autocmd FileType python match OverLength /\%81v.\+/


" markdown
au BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown set tw=0

" http://www.brankovukelic.com/post/2091037293/turn-vim-into-powerful-javascript-editor"
" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0

" XHTML (tab width 2 chr, no wrapping)
autocmd FileType xhtml set sw=2
autocmd FileType xhtml set ts=2
autocmd FileType xhtml set sts=2
autocmd FileType xhtml set textwidth=0

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2


"remove trailing whitespace
"http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.c++ :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

" tabs, not spaces for php, ctp
au BufEnter,BufRead *.php,*.ctp set noexpandtab

" set wrap
" when opening html file, nowrap
autocmd BufNewFile,BufRead *.html setlocal nowrap

" comment some lines of specific file type
autocmd FileType python nnoremap <buffer> <leader>c I# <esc>
autocmd FileType c nnoremap <buffer> <leader>c I// <esc>

" give simple type of if clause
autocmd FileType python :abbrev <buffer> iff if:<left>
autocmd FileType c :abbrev <buffer> iff if ()<left>

" fold codes
autocmd FileType html nnoremap <buffer> <leader>f Vatzf


" Add new python file's headers
function! s:insert_description(fileType)
    let template = "/root/.vim/plugin/my_templates/".a:fileType.".template"
    let i = 0
    for line in readfile(template)
        call append(i, line)
        let i += 1
    endfor
    execute "normal! Go\<Esc>"
endfunction
autocmd BufNewFile *.py call <SID>insert_description("py")


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ===> all plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * NERDTree

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open Window Explorer NerdTree & Tagbar using (left-right sidebar) using <F8>
"
function! ToggleNERDTreeAndTagbar()
    let w:jumpbacktohere = 1

" Detect which plugins are open
    if exists('t:NERDTreeBufName')
        let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
    else
        let nerdtree_open = 0
    endif
    let tagbar_open = bufwinnr('__Tagbar__') != -1

" Perform the appropriate action
    if nerdtree_open && tagbar_open
        NERDTreeClose
        TagbarClose
    elseif nerdtree_open
        TagbarOpen
    elseif tagbar_open
        NERDTreeToggle
    else
        NERDTreeToggle
        TagbarOpen
    endif

" Jump back to the original window
    for window in range(1, winnr('$'))
        execute window . 'wincmd w'
        if exists('w:jumpbacktohere')
            unlet w:jumpbacktohere
            break
        endif
    endfor
endfunction

" now you can open NERDTree and Tagbar using F8
" http://stackoverflow.com/questions/6624043/how-to-open-or-close-nerdtree-and-tagbar-with-leader
nmap <F8> :call ToggleNERDTreeAndTagbar()<CR>

" TagBar Configuration
let g:tagbar_usearrows=1
let g:tagbar_width=25
let g:tagbar_singleclick=1

" Use leader + l to open Tagbar in Right side
nnoremap <leader>l :TagbarToggle<CR>
" autocmd VimEnter * Tagbar " Make Always Load Tagbar every opening files


""""""""""""""""""""""""""""""""""""""""""""
" NERDTree : https://github.com/scrooloose/nerdtree.git
" MODIFYING NERDTree MY CUSTOM
" how to using NERDTree :
" http://ykyuen.wordpress.com/2011/04/04/nerdtree-the-file-explorer-in-vivim/
"""""""""""""""""""""""""""""""""""""""""""

" Enable this for make NERDTree load every opening files
" autocmd VimEnter * NERDTree " Make Always Load NERDTree every opening files
autocmd VimEnter * wincmd p " Automatically go to buffer every time open files

" FIXING NERDTree, automatically close if there no file edited
"https://github.com/scrooloose/nerdtree/issues/21
"
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Use leader + . for opening File Explorer
" map <leader>t :NERDTreeTabsToggle<CR>
map <leader>t :NERDTreeToggle<CR>
let g:NERDTreeShowBookmarks=1
let g:NERDTreeMouseMode=3
let g:NERDTreeWinSize=25

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

" python-syntax
let python_highlight_all=1

" pyflakes
let g:pyflakes_use_quickfix = 0

" pep8 mapped to F6
let g:pep8_map='<F6>'

" pydoc
let g:pydoc_cmd = 'python -m pydoc'
let g:pydoc_open_cmd = 'tabnew'

" syntastic
let g:syntastic_python_checkers = ['pylint', 'pep8', 'pyflakes']

""""""""""""""""""""""""""""""""""""""""""""""
" ===> all others
""""""""""""""""""""""""""""""""""""""""""""""
set ofu=syntaxcomplete#Complete
imap <silent> ` <C-X><C-O>
