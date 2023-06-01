autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '[%b]'

setopt PROMPT_SUBST
PROMPT='%F{green}%n%f:%F{blue}%1~%f%F{red}${vcs_info_msg_0_}%f$ '

# [ -f "/Users/henrikvester/.ghcup/env" ] && source "/Users/henrikvester/.ghcup/env" # ghcup-env

# alias rm="echo Use /bin/rm"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

PATH="/Users/henrikvester/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/henrikvester/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/henrikvester/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/henrikvester/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/henrikvester/perl5"; export PERL_MM_OPT;
