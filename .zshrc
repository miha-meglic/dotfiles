# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Autocomplete (wip)
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit

# Options
setopt auto_cd

# Keybinds (wip)
bindkey -v
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^\b" backward-delete-word
bindkey "^R" history-incremental-search-backward

# Import aliases
source ~/.aliases

# Export env vars
export EDITOR="/usr/bin/vi"
export VISUAL="/usr/bin/vim"

# PowerLevel10k Theme
source ~/.zshthemes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
