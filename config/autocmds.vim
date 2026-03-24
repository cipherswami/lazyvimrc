" =============================================================================
" File    : config/autocmds.vim
" Brief   : Auto commands file for lazyvimrc.
" =============================================================================

" Command to yank to the system clipboard
if has("win32")
  command! -range XCopy silent <line1>,<line2>w !clip
elseif executable("win32yank.exe")
  command! -range XCopy silent <line1>,<line2>w !win32yank.exe -i --crlf
elseif executable("wl-copy")
  command! -range XCopy silent <line1>,<line2>w !wl-copy
elseif executable("xclip")
  command! -range XCopy silent <line1>,<line2>w !xclip -selection clipboard
elseif executable("xsel")
  command! -range XCopy silent <line1>,<line2>w !xsel --clipboard --input
elseif executable("pbcopy")
  command! -range XCopy silent <line1>,<line2>w !pbcopy
else
  command! -range XCopy echo "No clipboard tool"
endif

" Open the quickfix window automatically after GREP
autocmd QuickFixCmdPost grep copen