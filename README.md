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

Below there's the list of plugins:

```vim
" syntax
"Plug 'sheerun/vim-polyglot'
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'yuezk/vim-js'
"Plug 'flowtype/vim-flow'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" tree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree-project-plugin'

" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
```

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

Above we're sourcing the `.vimrc` file which contains the following:

```vim
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber

so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
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
