" =============================================================================
" File    : config/vimplug.vim
" Brief   : LazyVim-inspired plugin layer powered by Vim-Plug.
" =============================================================================

" =============================================================================
" VIM-PLUG BOOTSTRAP
" NOTE: Auto downloads Vim-Plug and installs plugins on first launch. This
"       part can be commented out after the first launch.
" =============================================================================
let s:vimdir  = fnamemodify($MYVIMRC, ':h')
let s:vimplug = s:vimdir . '/autoload/plug.vim'
let s:plugged = s:vimdir . '/plugged'
if empty(glob(s:vimplug))
  let s:vimplugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  if has('win32') || has('win64')
    silent execute '!curl.exe -flo ' . shellescape(s:vimplug) . ' --create-dirs ' . s:vimplugurl
  else
    silent execute '!curl -flo ' . shellescape(s:vimplug) . ' --create-dirs ' . s:vimplugurl
  endif
  execute 'source ' . $MYVIMRC
endif
if empty(glob(s:plugged)) && exists(':PlugInstall')
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" =============================================================================
" PLUGINs
" NOTE: Each plugins/*.vim file contains both the declaration and config
" =============================================================================
call plug#begin()
for f in glob(s:vimdir . '/plugins/*.vim', 0, 1)
  execute 'source' f
endfor
call plug#end()

" =============================================================================
" POST LOAD
" NOTE: Anything that calls plugin functionality must go here
" =============================================================================
if globpath(&rtp, 'colors/tokyonight.vim') != ''
  colorscheme tokyonight                        " Set the colorscheme
endif