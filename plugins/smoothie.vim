" =============================================================================
" File    : plugins/smoothie.vim
" Brief   : Smooth Scrolling.
" Plugin  : https://github.com/psliwka/vim-smoothie
" =============================================================================
Plug 'psliwka/vim-smoothie'

" Smoothie options
let g:smoothie_enabled = 1                      " Enable vim smoothie
let g:smoothie_experimental_mappings = v:true   " Animate gg and G as well
let g:smoothie_no_default_mappings = v:false    " Overwrite default maps

" Vim Options
set scrolloff=0                                 " Let Smoothie manage it

" -- KeyMaps ------------------------------------------------------------------

nnoremap <silent> <C-d> <cmd>call smoothie#do("\<C-D>")<CR>
nnoremap <silent> <C-u> <cmd>call smoothie#do("\<C-U>")<CR>
nnoremap <silent> <C-f> <cmd>call smoothie#do("\<C-F>")<CR>
nnoremap <silent> <C-b> <cmd>call smoothie#do("\<C-B>")<CR>
vnoremap <silent> <C-d> <cmd>call smoothie#do("\<C-D>")<CR>
vnoremap <silent> <C-u> <cmd>call smoothie#do("\<C-U>")<CR>
vnoremap <silent> <C-f> <cmd>call smoothie#do("\<C-F>")<CR>
vnoremap <silent> <C-b> <cmd>call smoothie#do("\<C-B>")<CR>