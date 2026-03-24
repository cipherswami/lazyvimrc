" =============================================================================
" File    : config/keymaps.vim
" Brief   : Keymaps file for lazyvimrc.
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
nnoremap <silent> <Leader>bo :up\|%bd\|e#<CR><C-l>

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
