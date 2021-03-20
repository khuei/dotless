fpath=(
	/etc/zsh/completions
	/etc/zsh/config
	$fpath
)

setopt AUTO_CD
setopt SHARE_HISTORY

. /etc/zsh/config/bindings.zsh
. /etc/zsh/config/colors.zsh
. /etc/zsh/config/completion.zsh
. /etc/zsh/config/hash.zsh
. /etc/zsh/config/prompt.zsh
. /etc/zsh/config/wrappers.zsh
. /etc/zsh/config/aliases.zsh

. /etc/zsh/plugin/zsh-autosuggestions/zsh-autosuggestions.zsh
. /etc/zsh/plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
