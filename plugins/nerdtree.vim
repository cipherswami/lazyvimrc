" =============================================================================
" File    : plugins/nerdtree.vim
" Brief   : File Explorer.
" Plugin  : https://github.com/preservim/nerdtree
" =============================================================================
Plug 'preservim/nerdtree'

" Appearance
let g:NERDTreeStatusline = 'NERDTree'           " Name on the status line
let g:NERDTreeWinPos = 'left'                   " Explorer position
let g:NERDTreeMinimalUI = 1                     " Hide the help prompt
let g:NERDTreeMinimalMenu = 1                   " Hide file ops menu
let g:NERDTreeHighlightCursorline = 1           " Highlight cursor line
let g:NERDTreeDirArrowExpandable = '▸'          " Symbol for Folder closed
let g:NERDTreeDirArrowCollapsible = '▾'         " Symbol for Folder opened

" In-tree key mappings
let g:NERDTreeMapOpenInTab = '<C-t>'            " Open in new tab
let g:NERDTreeMapOpenSplit = '<C-s>'            " Open in horizontal split
let g:NERDTreeMapOpenVSplit = '<C-v>'           " Open in vertical split
let g:NERDTreeMapUpdirKeepOpen = '<BS>'         " Go up one level, keep tree open
let g:NERDTreeMapChangeRoot = '<C-c>'           " Set selected directory as tree root
let g:NERDTreeMapToggleHidden = 'H'             " Toggle hidden items
let g:NERDTreeMapMenu = 'M'                     " Activate file ops menu

" Behavior
let g:NERDTreeAutoDeleteBuffer = 1              " Remove buffer when file is deleted
let g:NERDTreeRespectWildIgnore = 1             " Honour Vim's wildignore in the tree
let g:NERDTreeChDirMode = 2                     " CWD follows the tree root
let g:loaded_netrw = 1                          " Disable NETRW
let g:loaded_netrwPlugin = 1                    " Disable NETRW Plugs
" let g:NERDTreeShowHidden = 1                    " Show dotfiles by default

" Shorter aliases for NERDTree's file operations
function! s:NERDTreeFileOpMaps()
  nmap <buffer> a    Ma
  nmap <buffer> m    Mm
  nmap <buffer> r    Mm
  nmap <buffer> d    Md
  nmap <buffer> c    Mc
  nmap <buffer> <C-g> Mp
endfunction
autocmd FileType nerdtree call s:NERDTreeFileOpMaps()

" Function for opening link under cursor
function! OpenUnderCursor()
  let l:file = expand('<cfile>')
  if has('mac')
    execute 'silent !open ' . shellescape(l:file)
  elseif has('unix')
    execute 'silent !xdg-open ' . shellescape(l:file) . ' &'
  elseif has('win32') || has('win64')
    execute 'silent !start "" ' . shellescape(l:file)
  endif
endfunction


" -- KeyMaps ------------------------------------------------------------------

" Toggle the NERDTree sidebar
nnoremap <silent> <Leader>e :NERDTreeToggle<CR>

" Reveal the current file in the tree
nnoremap <silent> <Leader>E :NERDTreeFind<CR>

" Open link under cursor
nnoremap gx :call OpenUnderCursor()<CR>