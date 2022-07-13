# Dotfiles

This is my repository where I keep all my dotfiles.
Keep in mind that at the moment this README will talk about how to install it on Mac.
Surely, it will work in other UNIX-based operating systems.
Although, some of the topics won't apply for those systems.

## Download the repository

If you've got `git` installed on your machine, just clone it wherever you want.

```shell
$ git clone https://github.com/alvgaona/.dotfiles
```

Otherwise, you can just download the [ZIP file](https://github.com/alvgaona/.dotfiles/archive/refs/heads/main.zip) from the web directly.

## Neovim

To install neovim dotfiles it's pretty simple.
Copy to your home folder the `.config/nvim` directory or create a symbolic link to it.

**Option 1**

```shell
$ cp -R /path/to/.config/nvim ~/.config
```

**Option 2**

```shell
$ ln -s -f /path/to/.config/nvim ~/.config/nvim
```

## Tmux

Again you can either copy the files or create symbolic links to them.

```shell
$ ln -s -f /path/to/.tmux.conf ~/.tmux.conf
```

```shell
$ ln -s -f /path/to/.tmux.conf.osx ~/.tmux.conf.osx
```

Depending on the theme you want for `tmux`, do one or the other.

**Catppuccin**

```shell
$ ln -s -f /path/to/.tmux.catppuccin.conf ~/.tmux.catppuccin.conf
```

**Powerline**

```shell
$ ln -s -f /path/to/.tmux.catppuccin.conf ~/.tmux.powerline.conf
```

## Zsh

WIP

