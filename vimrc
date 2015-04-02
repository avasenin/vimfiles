set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'jimenezrick/vimerl'
Bundle "ervandew/supertab"
Bundle "tpope/vim-fireplace"
Bundle "scrooloose/nerdtree"

filetype plugin indent on
set backspace=indent,eol,start

set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

set number      "add line numbers
set nowrap

set linespace=4

set visualbell t_vb=

"statusline setup
set statusline=%f       "tail of the filename

"Git
"set statusline+=%{fugitive#statusline()}

set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

"turn off needless toolbar on gvim/mvim
set guioptions-=T
"turn off the scroll bar
set guioptions-=L
set guioptions-=r

"indent settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~,*.class,*.beam "stuff to ignore when tab completing

set listchars=tab:▸\ ,trail:·,extends:>,precedes:<
set list

set formatoptions-=o "dont continue comments when pushing o/O

set scrolloff=3
set sidescrolloff=7
set sidescroll=1

filetype plugin on
filetype indent on

"hide buffers when not displayed
set hidden

"Activate smartcase
set ic
set smartcase

set noswapfile
set nobackup

let g:ctrlp_switch_buffer = 0

if has("gui_running")
    "tell the term has 256 colors
    "set t_Co=256

    colorscheme molokai
    set guitablabel=%M%t
    set lines=40
    set columns=115

    if has("gui_gnome")
        set term=gnome-256color
        colorscheme molokai
        set guifont=Monospace\ Bold\ 12
    endif

    if has("gui_mac") || has("gui_macvim")
        set guifont=Menlo:h12
        set transparency=7
    endif

    if has("gui_win32") || has("gui_win32s")
        set guifont=Consolas:h12
        set enc=utf-8
    endif
else
    "dont load csapprox if there is no gui support - silences an annoying warning
    let g:CSApprox_loaded = 1

    "set railscasts colorscheme when running vim in gnome terminal
    if $COLORTERM == 'gnome-terminal'
        set term=gnome-256color
        colorscheme molokai
    else
        if $TERM == 'xterm'
            set term=xterm-256color
            colorscheme molokai
        else
            colorscheme default
        endif
    endif
endif


map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"key mapping for saving file
nmap <C-s> :w<CR>

"key mapping for tab navigation
nmap <S-Tab> gt
nmap <C-S-Tab> gT

"Key mapping for textmate-like indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv


" PeepOpen uses <Leader>p as well so you will need to redefine it so something
" else in your ~/.vimrc file, such as:
" nmap <silent> <Leader>q <Plug>PeepOpen

"silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

autocmd BufRead,BufNewFile *.cljs setlocal filetype=clojure
