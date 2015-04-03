set nocompatible
filetype off

"Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Basics
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'valloric/YouCompleteMe'

" Themes
Plugin 'wgibbs/vim-irblack'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-scripts/twilight256.vim'

"Language-specific stuff
Plugin 'dannon/sort-python-imports'
Plugin 'dannon/autopep8.vim'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'tell-k/vim-autopep8'
"Plugin 'vim-scripts/pep8'


"Basics
set nobackup
set nowritebackup
set noswapfile
set encoding=utf-8
set backspace=indent,eol,start
"set autochdir

"Spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set expandtab
set nowrap

"Interface options
filetype plugin indent on
syntax on
set background=dark             "Assert dark background
set t_Co=256
"set mouse=a                     "Enable Mouse
set history=1000
"set spell                       "Spell check this thing.
set cursorline                  "Highlight current line
set ruler                       "Show line,col
set number                      "Line numbers
set guioptions=aAce
colorscheme ir_black

if has("gui_running")
    set guifont=Ubuntu\ Mono\ 12
endif

set list

set listchars=""                " Reset the listchars$
set listchars=tab:\ \           " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.          " show trailing spaces as dots$
set listchars+=extends:>        " The character to show in the last column when wrap is$
                                " off and the line continues beyond the right of the screen$
set listchars+=precedes:<       " The character to show in the last column when wrap is$
                                " off and the line continues beyond the right of the screen$

"Tab Completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,*.mako.py,*.rstA

"Searching
set hlsearch                    "Highlight search results
set incsearch                   "Incremental searching
set ignorecase                  "Ignore case in searching
set smartcase                   "Unless capitals

"Automatically rip trailing whitespace.
"autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))


"Key mapping
"
let mapleader = "\\"

"Ctrl-P customization
"let g:ctrlp_mru_files = 0

"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\.hg$\|eggs$\|' }


"Pymode Configuration"
"let g:pymode_lint_ignore = "E501,E201,E202,C901"
"let g:pymode_debug = 1


let g:syntastic_python_checkers=['flake8'] " , 'pylint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline=%f
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
