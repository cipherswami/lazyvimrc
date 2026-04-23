" =============================================================================
" File    : vimrc
" Brief   : VIMRC tuned with Sensible defaults and LazyVim-inspired keybinds.
" Author  : Aravind Potluri <aravindswami135@gmail.com>
" =============================================================================

" =============================================================================
" COMPATIBILITY
" =============================================================================
set nocompatible                    " Disable Vi compatibility
set encoding=utf-8                  " Internal character encoding
set clipboard=unnamedplus           " Sync to the system clipboard (if enabled)

" =============================================================================
" SEARCH
" =============================================================================
set hlsearch                        " Highlight all search matches
set incsearch                       " Show matches while typing the pattern
set ignorecase                      " Case-insensitive search by default
set smartcase                       " Case-sensitive when pattern has uppercase
set grepprg=grep\ -HRIn\ $*         " GREP: recursive, line number, case-insensitive
set path+=**                        " Recurse into subdirectories for :find
set wildignore+=**/.git/**          " Exclude .git from file search
set wildignore+=**/build/**         " Exclude build output
set wildignore+=**/dist/**          " Exclude dist output
set wildignore+=**/node_modules/**  " Exclude Node.js dependencies

" =============================================================================
" USER INTERFACE
" =============================================================================
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

" =============================================================================
" EDITING BEHAVIOR
" =============================================================================
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

" =============================================================================
" PERFORMANCE
" =============================================================================
set timeout                         " Enable timeout for key sequences
set timeoutlen=500                  " Milliseconds to wait for a key sequence
set updatetime=500                  " Milliseconds before CursorHold fires

" =============================================================================
" CURSOR APPEARANCE
" NOTE: Terminal cursor shape requires a compatible terminal emulator.
" =============================================================================
let &t_EI = "\e[2 q"                " Normal  : block
let &t_SI = "\e[6 q"                " Insert  : beam
let &t_SR = "\e[4 q"                " Replace : underline

" =============================================================================
" FUNCTIONS
" =============================================================================

" Func to close all other buffers
function! CloseOtherBuffers()
  let curr = bufnr('%')
  execute 'bufdo if bufnr("%") != ' . curr . ' | bd | endif'
endfunction

" =============================================================================
" COMMANDS
" =============================================================================

" Command to close other buffers
command! BOnly call CloseOtherBuffers()

" Command to yank to the system clipboard
if has("win32")
  command! -range XCopy silent <line1>,<line2>w !clip
elseif executable("win32yank.exe")
  command! -range XCopy silent <line1>,<line2>w !win32yank.exe -i --crlf
elseif executable("wl-copy")
  command! -range XCopy silent <line1>,<line2>w !wl-copy
elseif executable("xclip")
  command! -range XCopy silent <line1>,<line2>w !xclip -selection clipboard
elseif executable("xsel")
  command! -range XCopy silent <line1>,<line2>w !xsel --clipboard --input
elseif executable("pbcopy")
  command! -range XCopy silent <line1>,<line2>w !pbcopy
else
  command! -range XCopy echo "No clipboard tool"
endif

" =============================================================================
" AUTOCOMMANDS
" =============================================================================

" Open the quickfix window automatically after GREP
autocmd QuickFixCmdPost grep copen

" =============================================================================
" KEY MAPPINGS
" =============================================================================

let mapleader = " "

" -- General ------------------------------------------------------------------

" Save the current buffer
nnoremap <silent> <C-s> :w<CR>

" Clear search highlights
nnoremap <silent> <Esc><Esc> :noh<CR><Esc>

" Open file explorer
nnoremap <silent> <Leader>e :Ex<CR>

" Copy visual selection to system clipboard
vnoremap <silent> <leader>y :XCopy<CR>

" Smooth Scroll down
nnoremap <C-d> 5<C-e>5j

" Smooth Scroll up
nnoremap <C-u> 5<C-y>5k

" Indent selection and remain in visual mode
xnoremap > >gv

" Outdent selection and remain in visual mode
xnoremap < <gv

" -- Terminal -----------------------------------------------------------------

" Open a terminal split at the bottom (CTRL+/)
nnoremap <silent> <C-_> :bel term<CR>

" Exit terminal mode and close the terminal buffer (CTRL+/)
tnoremap <silent> <C-_> <C-\><C-n>:bd!<CR>

" -- Window Management --------------------------------------------------------

" Open a vertical split
nnoremap <silent> <Leader>wv :vs<CR>

" Open a horizontal split
nnoremap <silent> <Leader>ws :sp<CR>

" Close the current window
nnoremap <silent> <Leader>wq :q<CR>

" Force quit all windows
nnoremap <silent> <Leader>qq :qa!<CR>

" Close all windows except the current one
nnoremap <silent> <Leader>wo :only<CR>

" -- Buffer Navigation --------------------------------------------------------

" Go to the previous buffer
nnoremap <silent> <S-h> :bp<CR>

" Go to the next buffer
nnoremap <silent> <S-l> :bn<CR>

" Delete (close) the current buffer
nnoremap <silent> <Leader>bd :bd<CR>

" Close all buffers except the current one
nnoremap <silent> <leader>bo :BOnly<CR>

" -- Search & Navigation ------------------------------------------------------

" Find a file using Vim's built-in :find
nnoremap <Leader><space> :find<space>

" Run grep and load results into the quickfix list
nnoremap <Leader>/ :grep<space>

" Grep for the word under the cursor
nnoremap <silent> <Leader>sw :grep! '<cword>'<CR>

" Jump to the next quickfix entry
nnoremap <silent> ]q :cnext<CR>

" Jump to the previous quickfix entry
nnoremap <silent> [q :cprevious<CR>

" -- Lists & Registers --------------------------------------------------------

" List all open buffers
nnoremap <silent> <Leader>, :buffers<CR>

" Show command history
nnoremap <silent> <Leader>: :history<CR>

" Show search pattern history
nnoremap <silent> <leader>s/ :history /<CR>

" Show register contents
nnoremap <silent> <Leader>s" :registers<CR>

" Show the jump list
nnoremap <silent> <Leader>sj :jumps<CR>

" Show all marks
nnoremap <silent> <Leader>sm :marks<CR>
