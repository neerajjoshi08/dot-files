# =========================
# Locale
# =========================
export LC_ALL=en_US.UTF-8

# =========================
# Java
# =========================
export JAVA_HOME=$(/usr/libexec/java_home -v 17)

# =========================
# History
# =========================
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Ignore commands starting with space
setopt HIST_IGNORE_SPACE

# History cleanup
setopt HIST_IGNORE_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS

# Do not share history across sessions
unsetopt SHARE_HISTORY

# =========================
# Completion
# =========================
autoload -Uz compinit
compinit

# =========================
# Git branch in prompt
# =========================
autoload -Uz vcs_info

zstyle ':vcs_info:git:*' formats ' (%b)'

precmd() {
  vcs_info
}

setopt PROMPT_SUBST



# =========================
# History
# =========================
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Ignore commands starting with space
setopt HIST_IGNORE_SPACE

# History behavior
unsetopt INC_APPEND_HISTORY
unsetopt SHARE_HISTORY

setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

# =========================
# Completion
# =========================
autoload -Uz compinit
compinit

# =========================
# Prompt
# =========================
PROMPT='%n@%m %~ %# '

# =========================
# Prompt
# =========================
PROMPT='%F{190}%n%f@%F{208}%m%f %F{117}%~%f%F{10}${vcs_info_msg_0_}%f %# '

# =========================
# Terminal colors
# =========================
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# =========================
# Aliases
# =========================
alias ls='ls -G'
alias ll='ls -lG'
eval "$(uv generate-shell-completion zsh)"
