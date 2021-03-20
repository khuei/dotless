#!/usr/bin/env zsh

autoload -Uz compinit
[ -s ~/.zcompdump ] || {
	compinit -C
}
compinit -i -u

setopt MENU_COMPLETE
setopt LIST_PACKED

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list \
	'+m:{[:lower:]}={[:upper:]}' \
	'+m:{[:upper:]}={[:lower:]}' \
	'r:|?=** m:{a-z\-}={A-Z\_}'
zstyle ':completion:*' list-colors "$LS_COLORS"
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format %F{default}%B--- %d ---%b%f
