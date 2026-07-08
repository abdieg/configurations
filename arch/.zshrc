# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=long
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/oberon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

eval "$(starship init zsh)"

alias ..="cd .."
alias l="ls -l"
alias la="ls -lahF"

alias ls="eza --icons=always"
alias lt="eza --icons=always --long --tree --level=3"

alias battery="acpi"
alias superfile="spf"
alias lzg='lazygit'
alias vim='nvim'
alias nas='ssh -i ~/.ssh/arch -p port user@server'

eval "$(zoxide init zsh)"
alias cd="z"

# Use 'cat -v' command to see the key mapping
zmodload zsh/terminfo
bindkey "${terminfo[kdch1]}" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
export PATH="${HOME}/.local/bin":${PATH}
