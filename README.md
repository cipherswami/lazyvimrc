# LazyVIMRC

A lightweight, modern Vim configuration inspired by LazyVim, designed for a streamlined editing experience.

You are currently on the `main` branch — full setup with Vim-Plug and LazyVim like plugins and keymaps.

## Requirements

- Vim 9.1+
- Nerd Fonts
- ripgrep
- lazygit
- perl

## Install

### Linux / macOS

Clone the repository:

```bash
git clone https://github.com/cipherswami/lazyvimrc ~/.vim
```

Just start Vim, it will bootstrap the required:

```bash
vim
```

### Windows

Clone the repository:

```powershell
git clone https://github.com/cipherswami/lazyvimrc $HOME\vimfiles
```

Just start Vim, it will bootstrap the required:

```bash
vim
```

## Usage

This repository provides two configurations via branches. Switch to the one you need:

### Full Setup (VIMRC + Vim-Plug and plugins)

```bash
git checkout main
```

### Minimal Setup (VIMRC only)

Standalone `vimrc` — no plugins, no dependencies.

```bash
git checkout onlyrc
```

## Uninstall

### Linux / macOS

```bash
rm -rf ~/.vim ~/.vimrc ~/.viminfo ~/.cache/vim
```

### Windows

```powershell
rm -r -fo ~\_vimrc, ~\vimfiles, ~\_viminfo, ~\AppData\Local\vim -ea 0
```

## Plugins

| Plugin              | Purpose                         |
| ------------------- | ------------------------------- |
| tokyonight-vim      | Tokyo Night colorscheme for Vim |
| vim-airline         | Lightweight status/tab line     |
| NERDTree            | File system explorer            |
| vim-startify        | Start screen with sessions      |
| vim-fugitive        | Git wrapper for Vim             |
| vim-gitgutter       | Git diff signs in the gutter    |
| fzf / fzf.vim       | Fuzzy finder and pickers        |
| vim-floaterm        | Floating / split terminal       |
| vim-smoothie        | Smooth scrolling                |
| open-browser.vim   | Open URLs and search from Vim    |
| vim-highlightedyank | Flash yanked region             |
| vim-commentary      | Comment keybinds                |
| vim-devicons        | Filetype icons                  |

## Key Mappings

See [KEYMAPS.md](./KEYMAPS.md) for the full list of keybinds.

## License

This project is licensed under the MIT License — see the [LICENSE](./LICENSE) file for more details.

Feel free to open issues for bugs or suggestions, or submit pull requests to improve the configuration.
