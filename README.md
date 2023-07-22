# nad-neovim

## Index
* [Introduction](#introduction)
* [Features](#features)
  * [LSP](#lsp)
  * [Git Integration](#git-integration)
  * [Syntax Highlighting](#syntax-highlighting) 
  * [Latex Support](#latex-support)
  * [Markdown Support](#markdown-support)
  * [Harpoon](#harpoon)
  * [Commenting](#commenting)
  * [ToggleTerm](#toggleterm)
  * [Lua Line](#lua-line)
  * [File Management](#file-management)
      * [NVIM Tree](#nvim-tree)
      * [Telescope](#telescope)
* [Installation](#installation)
* [Special Thanks](#special-thanks)

## Introduction
This is a neovim `config` that was created by combining some of my neovim `config`
in addition to other people's configs who will be mentioned in the
[Special Thanks](#special-thanks) section. Feel free to copy this configuration
and use it, fork it, etc. If you would like something implemented in this main
`config` open a PR.

## Features
### LSP
This neovim `config` has [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
installed. There's autocompletion support for various languages including:
* HTML
* CSS
* Java Script
* Latex
* Bash
* Markdown

It also provides spell-check for the English language.

If you'd like support for more languages you can install their servers using
the `:Mason` command after setting up this `config`. [Null-ls] helps formatting, but
you will have to have the formatter installed (e.g Prettier for JS)

### Git Integration
This neovim `config` has [fugitive] and [gitsigns] plugins installed to provide
aesthetics to the buffer window in addition to git functionality. You can use
[fugitive] by using the binding `<leader>gs` which will let you stage your changes
and commit them.

### Syntax Highlighting
There's nothing really here except that syntax highlighting is done by [treesitter].

### Latex Support
You can build Latex files using the hotkey `<space>lb`. Latex support is
provided by [vimtex]. It opens `zathura` by default to view the rendered PDF.

### Markdown Support
You can preview markdown files in your browser by pressing the binding
`<space>mp`. The `config` uses [markdown-preview] for this purpose.

### Harpoon
Easily switch between buffers with [harpoon]. Check `after/plugin/harpoon.lua`
for the full list of keybindings.

### Commenting
You can comment by highlighting the lines you want to comment and then press `gc`
to comment. In normal mode, to comment a line, press `gcc`.

### ToggleTerm
You can easily use the terminal inside neovim with this `config`. Press the binding
`<C-\>` in normal mode to launch [toggleterm]().

### Lua Line
For aesthetic purposes, [lualine]() is installed. You can change its theme by
editing `after/plugin/lualine.lua`. You can check for available [lualine]() themes
[here]().

### File Management

#### NVIM Tree
Use `<space>e` to open [nvim-tree]() and browse your files there.

#### Telescope
You can use telescope by pressing the binding `<space>pf` to switch search
and open files FAST. You can also use `<space>ps` to search for a specific string
of text in the files of the directory you're currently in.

## Installation
1. Backup your existing neovim `config`
```
   $ mv ~/.config/nvim ~/.config/nvim.bak
```
2. Clone this repository
```
   $ git clone https://github.com/gontoblez/
```
3. Rename the cloned directory and move it to `$HOME/.config/`
```
   $ mv $HOME/.config/nvim
```

## Special Thanks
