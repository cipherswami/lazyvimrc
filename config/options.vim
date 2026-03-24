" =============================================================================
" File    : config/options.vim
" Brief   : Options file for lazyvimrc.
" =============================================================================

" GENERAL
set nocompatible                    " Disable Vi compatibility
set encoding=utf-8                  " Internal character encoding
set clipboard=unnamedplus           " Sync to the system clipboard (if enabled)

" USER INTERFACE
set background=dark                 " Signal dark background to colorschemes
set termguicolors                   " Enable 24-bit true color
set number                          " Show absolute line numbers
set norelativenumber                " Disable relative line numbers
set mouse=a                         " Enable mouse in all modes
set nowrap                          " Disable line wrapping
set wildmenu                        " Enhanced command-line completion menu
set laststatus=2                    " Always show the status line
set shortmess+=c                    " Suppress completion menu messages
set shortmess+=F                    " Suppress file info on open
set scrolloff=5                     " Keep 5 lines visible above and below the cursor
set splitright                      " Open vertical splits to the right
set splitbelow                      " Open horizontal splits below

" EDITING BEHAVIOR
set backspace=indent,eol,start      " Allow backspace over indentation and line breaks
set autoread                        " Reload files modified outside Vim
set expandtab                       " Use spaces instead of tabs
set tabstop=2                       " Visual width of a tab character
set softtabstop=2                   " Spaces deleted when backspacing over indentation
set shiftwidth=2                    " Spaces per indentation level
set autoindent                      " Inherit indentation from the previous line
set smartindent                     " Context-aware indentation for C-style code
filetype plugin indent on           " Filetype detection with plugin and indent support
syntax on                           " Enable syntax highlighting

" SEARCH
let grepprg = "grep -HRIn --exclude-dir=.git --exclude-dir=build $*"
set hlsearch                        " Highlight all search matches
set incsearch                       " Show matches while typing the pattern
set ignorecase                      " Case-insensitive search by default
set smartcase                       " Case-sensitive when pattern has uppercase
set grepprg=grepprg                 " GREP: recursive, line number, case-insensitive
set path+=**                        " Recurse into subdirectories for :find
set wildignore+=**/.git/**          " Exclude .git from file search
set wildignore+=**/build/**         " Exclude build output

" PERFORMANCE
set timeout                         " Enable timeout for key sequences
set timeoutlen=500                  " Milliseconds to wait for a key sequence
set updatetime=500                  " Milliseconds before CursorHold fires

" CURSOR APPEARANCE
let &t_EI = "\e[2 q"                " Normal  : block
let &t_SI = "\e[6 q"                " Insert  : beam
let &t_SR = "\e[4 q"                " Replace : underline