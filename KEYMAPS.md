# Key Mappings

## Core Keybinds

Leader key: `<SPACE>`

### General

| Key          | Action                   |
| ------------ | ------------------------ |
| `<Leader>e`  | Open file explorer       |
| `<Leader>y`  | Yank to system clipboard |
| `<Esc><Esc>` | Clear search highlight   |
| `<C-s>`      | Save current buffer      |
| `<C-d>`      | Smooth Scroll down       |
| `<C-u>`      | Smooth Scroll up         |

### Window Management

| Key          | Action              |
| ------------ | ------------------- |
| `<Leader>wv` | Vertical split      |
| `<Leader>ws` | Horizontal split    |
| `<Leader>wq` | Close window        |
| `<Leader>wo` | Close other windows |
| `<Leader>qq` | Quit all            |

### Buffer Navigation

| Key          | Action              |
| ------------ | ------------------- |
| `<S-h>`      | Previous buffer     |
| `<S-l>`      | Next buffer         |
| `<Leader>bd` | Delete buffer       |
| `<Leader>bo` | Close other buffers |

### Search & Navigation

| Key               | Action                     |
| ----------------- | -------------------------- |
| `<Leader><space>` | Find a file                |
| `<Leader>/`       | GREP for word              |
| `<Leader>sw`      | GREP for word under cursor |
| `<Leader>s/`      | List Search history        |
| `<Leader>:`       | List Command history       |
| `<Leader>,`       | List open buffers          |
| `<Leader>sj`      | Show Jump list             |
| `<Leader>sm`      | Show Marks list            |
| `<Leader>s"`      | Show Registers list        |
| `gx`              | Open URL under cursor      |
| `gs`              | Smart search               |

## Plugin Keybinds

### Terminal — `vim-floaterm`

| Key          | Action                           | Remarks                        |
| ------------ | -------------------------------- | ------------------------------ |
| `<C-/>`      | Toggle floating / split terminal | Works in normal & insert mode  |
| `<Leader>gg` | Open lazygit                     | Spawns lazygit inside floaterm |

### Search & Navigation — `fzf.vim`

#### Pickers

| Key               | Action                      | Remarks                           |
| ----------------- | --------------------------- | --------------------------------- |
| `<Leader><space>` | Fuzzy find files            | Respects `.gitignore` via ripgrep |
| `<Leader>/`       | Live ripgrep search         | Full-project content search       |
| `<Leader>sw`      | Ripgrep word under cursor   | Instant search for current word   |
| `<Leader>,`       | Browse open buffers         | Quick buffer switcher             |
| `<Leader>:`       | Browse command history      | Re-run past ex-commands           |
| `<Leader>s/`      | Browse search history       | Re-run past `/` searches          |
| `<Leader>sj`      | Browse jump list            | Navigate recent cursor positions  |
| `<Leader>sm`      | Browse marks                | Jump to named marks               |
| `<Leader>sc`      | Browse available commands   | Discover all ex-commands          |
| `<Leader>sk`      | Browse all key mappings     | Live keymap reference             |
| `<Leader>sh`      | Search help tags            | Fuzzy `:help` navigation          |
| `<Leader>st`      | Browse and switch filetypes | Override detected filetype        |

#### Inside fzf picker

| Key       | Action                   | Remarks                        |
| --------- | ------------------------ | ------------------------------ |
| `<C-t>`   | Open in new tab          |                                |
| `<C-s>`   | Open in horizontal split |                                |
| `<C-v>`   | Open in vertical split   |                                |
| `<C-f>`   | Scroll preview down      | Preview pane must be visible   |
| `<C-b>`   | Scroll preview up        | Preview pane must be visible   |
| `<C-q>`   | Select all and accept    | Sends all results to quickfix  |
| `<Alt-p>` | Toggle preview window    | Reclaim space on small screens |

### Git: Diffs & Blame — `vim-fugitive`

| Key          | Action                  | Remarks                                          |
| ------------ | ----------------------- | ------------------------------------------------ |
| `<Leader>gd` | Diff split current file | Opens `:Gdiffsplit`; use `]c`/`[c` to jump hunks |
| `<Leader>gb` | Toggle inline git blame | Shows commit + author per line                   |
| `<Leader>gs` | Git status (fzf)        | Powered by fzf.vim + fugitive                    |
| `<Leader>gl` | Browse git commit log   | Powered by fzf.vim + fugitive                    |

### Git: Hunk Operations — `vim-gitgutter`

| Key           | Action            | Remarks                             |
| ------------- | ----------------- | ----------------------------------- |
| `]h` / `[h`   | Next / prev hunk  | Jumps between changed blocks        |
| `<Leader>ghp` | Preview hunk diff | Floating preview, no split needed   |
| `<Leader>ghr` | Revert hunk       | Discards changes in current hunk    |
| `<Leader>ghs` | Stage hunk        | Partial staging without leaving vim |

### File Explorer — `NERDTree`

#### Global

| Key         | Action                      | Remarks                            |
| ----------- | --------------------------- | ---------------------------------- |
| `<Leader>e` | Toggle NERDTree             | Opens at current working directory |
| `<Leader>E` | Reveal current file in tree | Syncs tree to the active buffer    |

#### In-tree _(when NERDTree is focused)_

| Key     | Action                   | Remarks                            |
| ------- | ------------------------ | ---------------------------------- |
| `a`     | Add file / directory     | Append `/` to name to create a dir |
| `m`     | Move file / directory    | Also acts as a rename              |
| `r`     | Rename file / directory  | In-place rename prompt             |
| `d`     | Delete file / directory  | Prompts for confirmation           |
| `c`     | Copy file / directory    | Then paste with `p`                |
| `H`     | Toggle hidden files      | Shows dotfiles                     |
| `<BS>`  | Go up one level          | Keeps tree open                    |
| `<C-c>` | Set dir as tree root     | Useful for mono-repos              |
| `<C-t>` | Open in new tab          |                                    |
| `<C-s>` | Open in horizontal split |                                    |
| `<C-v>` | Open in vertical split   |                                    |
| `<C-g>` | Show full path           | Echoes absolute path in cmdline    |

### Comments — `vim-commentary`

| Key           | Action                 | Remarks                                |
| ------------- | ---------------------- | -------------------------------------- |
| `gcc`         | Toggle comment on line | Uses filetype-aware comment char       |
| `gc` (visual) | Comment selection      | Works on visual line selection         |
| `gc` + motion | Comment motion         | e.g. `gc3j` comments 3 lines down      |
| `gbc`         | Toggle block comment   | Wraps in block delimiters if supported |

### Miscellaneous

| Key          | Action                       | Remarks                     |
| ------------ | ---------------------------- | --------------------------- |
| `<Leader>uc` | Preview / switch colorscheme | Live preview via fzf picker |
