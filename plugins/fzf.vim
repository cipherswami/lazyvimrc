" =============================================================================
" File    : plugins/fzf.vim
" Brief   : FZF powered fuzzy finder.
" Plugin  : https://github.com/junegunn/fzf
"           https://github.com/junegunn/fzf.vim
" =============================================================================
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" FZF Default Options
let $FZF_DEFAULT_OPTS = '
  \ --multi
  \ --cycle
  \ --info=inline
  \ --border=rounded
  \ --bind=alt-p:toggle-preview
  \ --bind=ctrl-f:preview-down
  \ --bind=ctrl-b:preview-up
  \ --bind=ctrl-q:select-all+accept
  \ '

" FZF action keymap
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \ }

" -- KeyMaps ------------------------------------------------------------------

" Fuzzy file search in the current directory
nnoremap <silent> <Leader><space> :Files<CR>

" Live ripgrep search across the project
nnoremap <silent> <Leader>/ :RG<CR>

" Fuzzy search across open buffers
nnoremap <silent> <Leader>, :Buffers<CR>

" Browse command history
nnoremap <silent> <Leader>: :History:<CR>

" Browse search pattern history
nnoremap <silent> <Leader>s/ :History/<CR>

" Search for the word under the cursor
nnoremap <silent> <Leader>sw :RG <C-r><C-w><CR>

" Browse the jump list
nnoremap <silent> <Leader>sj :Jumps<CR>

" Browse marks
nnoremap <silent> <Leader>sm :Marks<CR>

" Browse available commands
nnoremap <silent> <Leader>sc :Commands<CR>

" Browse all key mappings
nnoremap <silent> <Leader>sk :Maps<CR>

" Search help tags
nnoremap <silent> <Leader>sh :Helptags<CR>

" Browse and switch filetypes
nnoremap <silent> <Leader>st :Filetypes<CR>

" Show Git-modified files (git status)
nnoremap <silent> <Leader>gs :GFiles?<CR>

" Browse Git commit log
nnoremap <silent> <Leader>gl :Commits<CR>

" Preview and switch colorschemes
nnoremap <silent> <Leader>uc :Colors<CR>