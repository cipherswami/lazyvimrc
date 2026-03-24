" =============================================================================
" File    : plugins/open-browser.vim
" Brief   : Open URLs from Vim (replacement for gx)
" Plugin  : https://github.com/tyru/open-browser.vim
" =============================================================================

Plug 'tyru/open-browser.vim'

" -- Options ------------------------------------------------------------------

let g:openbrowser_search_default = 'google'
let g:openbrowser_open_options = { 'background': 1 }

" -- KeyMaps ------------------------------------------------------------------

nmap <silent> gx <Plug>(openbrowser-open)
vmap <silent> gx <Plug>(openbrowser-open)
nmap <silent> gs <Plug>(openbrowser-smart-search)
vmap <silent> gs <Plug>(openbrowser-smart-search)