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
 if [ -f ~/.bash_pythons ]; then
 . ~/.bash_pythons
 source ~/.bash_python_functions.sh
 fi
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# /Users/viva/.rvm/bin
export PATH="$PATH:$HOME/.rvm/bin"




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
# https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
