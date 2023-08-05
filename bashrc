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

export PS1="\$ "

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export EDITOR=/usr/bin/vim
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. "$HOME/.cargo/env"

export GPG_TTY=\$(tty)
