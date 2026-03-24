" =============================================================================
" File    : plugins/fugitive.vim
" Brief   : Git commands.
" Plugin  : https://github.com/tpope/vim-fugitive
" =============================================================================
Plug 'tpope/vim-fugitive'

" -- KeyMaps ------------------------------------------------------------------

" Open a diff split for the current file
nnoremap <silent> <Leader>gd :Gdiffsplit<CR>

" Toggle inline Git blame annotations
nnoremap <silent> <Leader>gb :Git blame<CR>