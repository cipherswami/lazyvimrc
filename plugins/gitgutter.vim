" =============================================================================
" File    : plugins/gitgutter.vim
" Brief   : Git signcolumn.
" Plugin  : https://github.com/airblade/vim-gitgutter
" =============================================================================
Plug 'airblade/vim-gitgutter'

" Vim GitGutter options
let g:gitgutter_enabled = 1                     " Enable Git Gutter

" Sign column symbols
let g:gitgutter_sign_added                   = '┃'
let g:gitgutter_sign_modified                = '┃'
let g:gitgutter_sign_modified_removed        = '┃'
let g:gitgutter_sign_removed                 = '❯'
let g:gitgutter_sign_removed_first_line      = '❯'
let g:gitgutter_sign_removed_above_and_below = '❯'

" Hunk preview window options
let g:gitgutter_show_msg_on_hunk_jumping = 1    " Show 'Hunk N of M' when navigating
let g:gitgutter_preview_win_floating    = 1     " Show previews in a floating window
let g:gitgutter_close_preview_on_escape = 1     " Close preview on Escape
let g:gitgutter_floating_window_options = {
  \ 'line': 'cursor+1',
  \ 'col': 9,
  \ 'pos': 'topleft',
  \ 'minwidth': &columns - 4,
  \ 'maxwidth': &columns - 4,
  \ 'border': [1, 1, 1, 1],
  \ 'borderchars': ['─', '│', '─', '│', '╭', '╮', '╯', '╰'],
  \ 'padding': [0, 1, 0, 1],
  \ 'scrollbar': 1,
  \ 'moved': 'any',
  \ }                                           " Custom UI for Hunk Preview

" Vim Options
set diffopt+=vertical                           " Vertical split for diffs
set updatetime=500                              " Refresh signs after inactivity

" -- KeyMaps ------------------------------------------------------------------

" Jump to the next hunk
nnoremap ]h <Plug>(GitGutterNextHunk)

" Jump to the previous hunk
nnoremap [h <Plug>(GitGutterPrevHunk)

" Preview the diff for the hunk under the cursor
nnoremap <silent> <Leader>ghp <Plug>(GitGutterPreviewHunk)

" Revert the hunk under the cursor
nnoremap <silent> <Leader>ghr <Plug>(GitGutterUndoHunk)

" Stage the hunk under the cursor
nnoremap <silent> <Leader>ghs <Plug>(GitGutterStageHunk)