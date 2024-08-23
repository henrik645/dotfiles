autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '[%b]'

setopt PROMPT_SUBST
PROMPT='%F{green}%n%f:%F{blue}%1~%f%F{red}${vcs_info_msg_0_}%f$ '

export JAVA_HOME=$(/usr/libexec/java_home)

autoload -Uz compinit && compinit

# color files when ls
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# better cc options
alias cc='cc -Wall -Wpedantic -Wextra'
