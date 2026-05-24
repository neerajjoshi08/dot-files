HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
autoload -Uz compinit
compinit

unsetopt BEEP
setopt NO_LIST_BEEP
setopt AUTO_LIST
setopt NO_AUTO_MENU
setopt NO_MENU_COMPLETE

autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats ' (%b)'
precmd() {
  vcs_info
}
setopt PROMPT_SUBST
setopt HIST_IGNORE_SPACE
zstyle ':completion:*:*:git:*' tag-order 'main-porcelain-commands aliases'

PROMPT='%F{190}%n%f@%F{208}%m%f %F{117}%~%f%F{10}${vcs_info_msg_0_}%f %# '

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LC_ALL=en_US.UTF-8
export JAVA_HOME=$(/usr/libexec/java_home -v 21)

alias ls='ls -G'
alias ll='ls -lG'
