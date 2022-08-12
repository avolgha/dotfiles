# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Aliases
alias ls="exa --icons"
alias lf="exa -al"
alias tree="exa --tree --level 2"
alias cat="bat"
alias raw="/usr/bin/cat"
alias vim="nvim"
alias ovim="/usr/bin/vim"

alias nvim-cfg="nvim ~/.config/nvim/init.vim"

help() {
    "$@" --help 2>&1 | bat --plain --language=help
}

man() {
	  /usr/bin/man "$@" 2>&1 | bat --plain --language=help
}

# Look of bash
PS1="\033[01;32m\u\033[0m$ "

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

[ -f "/home/marius/.ghcup/env" ] && source "/home/marius/.ghcup/env" # ghcup-env
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
source ~/.completions/exa.bash
