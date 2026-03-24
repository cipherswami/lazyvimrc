" =============================================================================
" File    : plugins/startify.vim
" Brief   : Start Screen.
" Plugin  : https://github.com/mhinz/vim-startify
" =============================================================================
Plug 'mhinz/vim-startify'

" Startify Screen
let g:startify_lists = [
\  { 'type': 'sessions',  'header': ['   Sessions']  },
\  { 'type': 'files',     'header': ['   Recent']    },
\]

" Startify options
let g:startify_fortune_use_unicode = 1          " Unicode in the fortune header
let g:startify_change_to_vcs_root = 1           " cd to VCS root on file open
let g:startify_change_to_dir = 1                " cd to file's directory on open