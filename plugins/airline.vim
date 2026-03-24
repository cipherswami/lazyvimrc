" =============================================================================
" File    : plugins/airline.vim
" Brief   : Status and Tab line.
" Plugin  : https://github.com/vim-airline/vim-airline
" =============================================================================
Plug 'vim-airline/vim-airline'

" Airline
let g:airline_theme = 'tokyonight'              " Set the theme
let g:airline_powerline_fonts = 1               " Use Powerline font glyphs
let g:airline_section_z = '%3p%% │ %l:%c'       " Right section: percentage, line, column
" let g:airline_statusline_ontop = 1             " Move status line to the top

" Tabline
let g:airline#extensions#tabline#enabled = 1               " Show buffers
let g:airline#extensions#tabline#buffer_min_count = 2      " Activate for 2+ buffers only
let g:airline#extensions#tabline#left_sep = ' '            " Main separator
let g:airline#extensions#tabline#left_alt_sep = '│'        " Alternate separator
let g:airline#extensions#tabline#formatter = 'unique_tail' " Show unique filename

" Integrations
let g:airline#extensions#fzf#enabled = 1          " FZF status in airline
let g:airline#extensions#fugitiveline#enabled = 1 " Branch name via vim-fugitive
let g:airline#extensions#branch#enabled = 1       " Show current Git branch
let g:airline#extensions#hunks#enabled = 1        " Show added/modified/deleted counts

" Vim Options
set laststatus=2                                " Always show the status line
set noshowmode                                  " Disable mode below statusline