# dotfiles

repository with my configuration files.

## Structure

`coc/` - coc.nvim configuration (infos in `coc/README.md`).  
`neovim/` - neovim configuration (infos in `neovim/README.md`).  
`{debian,fedora}.bashrc` - bash configuration (infos on this page).  
`.tmux-help.md` - help file for tmux (infos on this page).

## .bashrc

> You can find two different files ending with `.bashrc`: `debian.bashrc` and `fedora.bashrc`.  
> As there names tell, each of them is for a different distrobution of Linux.
>
>File|Distrobution
>---|---
>debian.bashrc|Debian, Ubuntu, etc (all that use `apt` as package manager)
>fedora.bashrc|Fedora, RedHat, CentOS, OpenSUSE, etc (all that use `dnf` as package manager)

The `.bashrc` file does contain my bash configuration. If you use tmux, I would recommend adding the `.tmux-help.md` file as well in the users home directory.

Requirements: `exa`, `fx`, `bat`, `neovim`, `dnf`.

## .tmux-help.md

The `.tmux-help.md` file contains a few lines of text describing which keys do what in tmux.

The file is only used in the `.bashrc` so I would recommend using this file along side the bash configuration.

