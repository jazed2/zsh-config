# Autocomplete
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/jazze/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Vim keybinds
bindkey -v
export KEYTIMEOUT=1

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
#
### SOURCES ###
# 
# Exports
source $HOME/.config/zsh-config/exports.zsh
#
# Keymapping
source $HOME/.config/zsh-config/func.zsh
#
# ZSH Syntax Highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
# Aliases
source $HOME/.config/zsh-config/aliases.zsh
#	
# Starship prompt
eval "$(starship init zsh)"
#
