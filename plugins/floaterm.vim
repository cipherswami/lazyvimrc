" =============================================================================
" File    : plugins/floaterm.vim
" Brief   : Floating terminal.
" Plugin  : https://github.com/voldikss/vim-floaterm
" =============================================================================
Plug 'voldikss/vim-floaterm'

" Floaterm options
let g:floaterm_wintype = 'split'                " Layout: 'float', 'split', or 'vsplit'
let g:floaterm_height = 0.4                     " Height as a fraction of the screen
let g:floaterm_width = 0.4                      " Width as a fraction of the screen
let g:floaterm_keymap_toggle = '<C-_>'          " Toggle terminal with Ctrl+/
let g:floaterm_giteditor = v:true               " Prevents nested Vim inside floaterm Git operations
" let g:floaterm_shell = '/usr/bin/sh'            " Floaterm's shell

" Command to open lazygit
command! Lazygit FloatermNew --width=0.99 --height=0.99 --name=lazygit --autoclose=2 lazygit

" -- KeyMaps ------------------------------------------------------------------

" Open lazygit
nnoremap <silent> <Leader>gg :Lazygit<CR>

" Open terminal
nnoremap <silent> <Leader>ft :FloatermToggle<CR>
nnoremap <silent> <Esc>[47;5u :FloatermToggle<CR>
tnoremap <silent> <Esc>[47;5u <C-\><C-n>:FloatermToggle<CR>
