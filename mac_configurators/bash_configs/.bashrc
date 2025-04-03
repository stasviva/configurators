# <!>------------------------------------------------------------------------------------------------------------------<!> #
# <!>--------------------------------------------------BASHRC----------------------------------------------------------<!> #
# <!>------------------------------------------------------------------------------------------------------------------<!> #
# echo "#--<!>--------------------------------------------------------------------------------------------x-<!>"
# echo "# <!> TO MODIFY BASHRC -> sudo vi ~/.bashrc OR sudo open -a atom ~/.bashrc"
# echo "# <!> TO RELOAD/REFRESH BASHRC -> source ~/.bashrc or . ~/.bashrc"
# echo "#--<!>--------------------------------------------------------------------------------------------x-<!>"
#bash_aliases could your changes separate and organized.
#It is only used if it exists
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
# <!>-bash_functions where you could organize your supporting functions for your aliases.
 if [ -f ~/.bash_functions ]; then
 . ~/.bash_functions
 fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# /Users/viva/.rvm/bin
export PATH="$PATH:$HOME/.rvm/bin"
PATH=$PATH:/usr/local/bin/; export PATH



# Load Angular CLI autocompletion.
source <(ng completion script)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
. "$HOME/.cargo/env"

eval "$(starship init bash)"
eval "$(pyenv virtualenv-init -)"

# Created by `pipx` on 2022-09-01 03:59:00
export PATH="$PATH:/Users/viva/.local/bin"

function settitle()
{
    if [ $# -eq 0 ]
        then
        eval set -- "\\u@\\h: \\w"
    fi

    case $TERM in
        xterm*) local title="\[\033]0;$@\007\]";;
        *) local title=''
    esac
    local prompt=$(echo "$PS1" | sed -e 's/\\\[\\033\]0;.*\\007\\\]//')
    PS1="${title}${prompt}"
}

function uptimeinfo {
    uptime | perl -ne 'if(/\d\s+up(.*),\s+\d+\s+users/) { $s = $1; $s =~ s/^\s+|\s+$//g; print $s; }'
}

function proml {
  local        BLACK="\[\033[0;30m\]"
  local         GRAY="\[\033[1;30m\]"
  local          RED="\[\033[0;31m\]"
  local    LIGHT_RED="\[\033[1;31m\]"
  local        GREEN="\[\033[0;32m\]"
  local  LIGHT_GREEN="\[\033[1;32m\]"
  local        BROWN="\[\033[0;33m\]"
  local       YELLOW="\[\033[1;33m\]"
  local         BLUE="\[\033[0;34m\]"
  local   LIGHT_BLUE="\[\033[1;34m\]"
  local       PURPLE="\[\033[0;35m\]"
  local LIGHT_PURPLE="\[\033[1;35m\]"
  local         CYAN="\[\033[0;36m\]"
  local   LIGHT_CYAN="\[\033[1;36m\]"
  local   LIGHT_GRAY="\[\033[0;37m\]"
  local        WHITE="\[\033[1;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w \D{%a %b %d %Y %l:%M%p (%Z%z)}\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PCOLOR="\[\033[\$(promptcol)\]"

# note that in the following prompt the error code item (\$?) must be the
# first item in the prompt.  Otherwise it'll show the errorcode for the last
# command executed in producing the prompt.
PS1="${TITLEBAR}\
$BLUE [$GREEN[\$?] [\D{%a %b %d %Y %l:%M%p (%Z%z)}] [Up: \$(uptimeinfo)] $BROWN\u@\h:\w $LIGHT_GRAY\$(__git_ps1)\
$BLUE]\
\n$PCOLOR λ $LIGHT_GRAY"
PS2='> '
PS4='+ '
}
proml

# https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f "/opt/homebrew/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/opt/homebrew/opt/bash-git-prompt/share"
source "/opt/homebrew/opt/bash-git-prompt/share/gitprompt.sh"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/vijish.varghese/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
