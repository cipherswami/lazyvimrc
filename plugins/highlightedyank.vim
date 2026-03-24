" =============================================================================
" File    : plugins/highlightedyank.vim
" Brief   : Flash the yanked region.
" Plugin  : https://github.com/machakann/vim-highlightedyank
" =============================================================================
Plug 'machakann/vim-highlightedyank'

let g:highlightedyank_highlight_duration  = 200 " Flash duration in milliseconds
let g:highlightedyank_highlight_in_visual = 1   " Also flash in visual mode
highlight HighlightedyankRegion cterm=reverse gui=reverse