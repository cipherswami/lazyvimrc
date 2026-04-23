# LazyVIMRC

A lightweight, modern Vim configuration inspired by LazyVim, designed for a streamlined editing experience.

You are currently on the `onlyrc` branch — standalone VIMRC, no plugins.

## Requirements

- Vim 8+
- Nerd Font (optional, recommended)

## Install

### Linux / macOS

```bash
git clone -b onlyrc https://github.com/cipherswami/lazyvimrc ~/.vim
```

### Windows

```powershell
git clone -b onlyrc https://github.com/cipherswami/lazyvimrc $HOME\vimfiles
```

## Usage

This repository provides two configurations via branches. Switch to the one you need:

### Full Setup (VIMRC + Vim-Plug and plugins)

```bash
git checkout main
```

### Minimal Setup (VIMRC only)

```bash
git checkout onlyrc
```

## Uninstall

### Linux / macOS

```bash
rm -rf ~/.vim ~/.vimrc ~/.viminfo
```

### Windows

```powershell
rm -r -fo ~\_vimrc, ~\vimfiles, ~\_viminfo -ea 0
```

# Key Mappings

See [KEYMAPS.md](./KEYMAPS.md) for the full list of keybinds.

## License

This project is licensed under the MIT License — see the [LICENSE](./LICENSE) file for more details.

Feel free to open issues for bugs or suggestions, or submit pull requests to improve the configuration.
