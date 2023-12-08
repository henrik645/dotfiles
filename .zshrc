autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '[%b]'

setopt PROMPT_SUBST
PROMPT='%F{green}%n%f:%F{blue}%1~%f%F{red}${vcs_info_msg_0_}%f$ '

# [ -f "/Users/henrikvester/.ghcup/env" ] && source "/Users/henrikvester/.ghcup/env" # ghcup-env

# alias rm="echo Use /bin/rm"

PATH="/Users/henrikvester/.cabal/bin:$PATH"
PATH="/Users/henrikvester/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/henrikvester/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/henrikvester/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/henrikvester/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/henrikvester/perl5"; export PERL_MM_OPT;

export JAVA_HOME=$(/usr/libexec/java_home)
# export JAVA_HOME=/Users/henrikvester/Library/Java/JavaVirtualMachines/corretto-19.0.2/Contents/Home

PATH="/Library/PostgreSQL/15/bin/:$PATH"

autoload -Uz compinit && compinit

# color files when ls
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# better cc options
alias cc='cc -Wall -Wpedantic -Wextra'

# dotfiles repository
# see https://www.atlassian.com/git/tutorials/dotfiles

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
