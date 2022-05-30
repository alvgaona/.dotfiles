# VIM Configuration

This repository describes the steps to configure NeoVim as your default IDE.
It also includes a bunch of plugins in order to make VIM much more useable.

## Usage

Follow these steps to have this configuration up and running in a few minutes:

1. Install `neovim`.
2. Install `rg` or `ag` searcher.
3. Clone this repository in your filesystem.
4. Copy (recursively) the `.vim/` and `.config/` to your `$HOME`, as well as the `.vimrc` file.
5. Run NeoVim and execute the `:PlugInstall` command to install all the defined plugins.

## Plugin Manager

In here, we'll be using [vim-plug] as the default plugin manager.

## Plugins

In the configuration there are a bunch of plugins that come out of the box for you. 
However, feel free to modify or add anything that suits best to your style.

For the whole script just view this [file][plugins.vim]

## VIM Directory

In this section, I'll try to explain the structure used in the VIM directory.
But first, a quick note.
As we're using neovim, we need the `.config/nvim` directory in our `$HOME`.
In it, there should be a file named `init.vim`, and within we'll set up a few things.

```vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
```

Finally, we need to mention that a few files are created to keep things better organized.

- `plugins.vim` contains the full list of plugins.
- `plugin-config.vim` contains the configuration for each plugin in the previous file.
- `maps.vim` contains all the shortcut definitions for vim.

## Dependencies

A few dependencies are needed to have a fully functional VIM.

1. [neovim].
2. [rg] or [ag].
3. [tmux].
4. [fzf].
5. [nerd-fonts].

[neovim]: https://github.com/neovim/neovim
[rg]: https://github.com/BurntSushi/ripgrep
[ag]: https://github.com/ggreer/the_silver_searcher
[tmux]: https://github.com/tmux/tmux
[fzf]: https://github.com/junegunn/fzf
[nerd-fonts]: https://github.com/ryanoasis/nerd-fonts
[vim-plug]: https://github.com/junegunn/vim-plug
[plugins.vim]: .vim/plugins.vim

