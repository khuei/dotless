#!/usr/bin/env zsh

[ "$(command -v alsamixer)" ] && alias a=alsamixer

[ "$(command -v cargo)" ] && {
	alias cbench='cargo bench'
	alias cbuild='cargo build'
	alias ccheck='cargo check'
	alias cclean='cargo clean'
	alias crun='cargo run'
	alias ctest='cargo test'
}

[ "$(command -v clang-format)" ] && alias cformat=clang-format

[ "$(command -v clang-tidy)" ] && alias ctidy=clang-tidy

[ "$(command -v color)" ] && alias c=color

[ "$(command -v git)" ] && {
	alias g=git
	alias groot="cd -- \$(git rev-parse --show-toplevel 2>/dev/null)"
}

[ "$(command -v ls)" ] && {
	alias ls='ls --color'
	alias l='ls -AFh'
	alias ll='ls -AlFh'
}

[ "$(command -v ncmpcpp)" ] && [ "$(command -v mpd)" ] && \
	alias n="[ -z \"\$(ps -opid= -C mpd)\" ] && mpd &! ncmpcpp 2>/dev/null"

[ "$(command -v slock)" ] && alias sl=slock

[ "$(command -v ssh)" ] && alias s=ssh

[ "$(command -v tmux)" ] && alias t=tmux

[ "$(command -v vifm)" ] && alias f=vifm

[ -n "$EDITOR" ] && alias v="${EDITOR:=vi}"

[ -n "$PAGER" ] && alias p="$PAGER"
