# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were (mostly) added by compinstall
zstyle :compinstall filename '/home/forrest/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
# End of lines added by compinstall

# make everything neovim
export VISUAL=nvim
export EDITOR="$VISUAL"

# prompt stuff
PROMPT='%F{red}%n%F{cyan}@%F{red}%m %F{cyan}%~ %f%# '

# my aliases are here
[ -f $HOME/.zsh_aliases ] && source $HOME/.zsh_aliases

# plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# yazi shell wrapper
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# to make zoxide work
eval "$(zoxide init zsh)"
