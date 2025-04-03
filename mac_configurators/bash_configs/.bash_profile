# $FLAG_STATUS
# ybp - yes bash profile
# yba - yes bash alias
# ----------Uncomment the below line to enable the logs-------------
# read -p "Display the environment details? (ybp, ybpv, ybpp, yba): " input_param
# FLAG_STATUS=${input_param}
# Upper Case for bash + 4.0
# FLAG_STATUS=${input_param^^}
# Upper Case for bash - 4.0
FLAG_STATUS=""
# ----------Uncomment the below line to enable the logs-------------
# FLAG_STATUS=$(echo "$input_param" | tr 'a-z' 'A-Z')

echo "# <!>--------------------------------------------< BASH_PROFILE >------------------------------------------------e--------<!> #"
# <!>------------------------------------------------------------------------------------------------------------------<!> #
# <!>--------------------------------------------BASH_PROFILE----------------------------------------------------------<!> #
# <!>------------------------------------------------------------------------------------------------------------------<!> #
if [ "$FLAG_STATUS" == "y" ]; then
  echo "Is Log Enabled $FLAG_STATUS"
  echo "#----Current Shell ----> $0"
fi
# M - Mac
eval "$(/opt/homebrew/bin/brew shellenv)"
# Intel Mac
# eval "$(/usr/local/bin/brew shellenv)"
# <!>-BREW PREFIX
export BREW_PREFIX=$(brew --prefix)
export BREW_CELLAR=$BREW_PREFIX/Cellar
# <!>-Version-jdk-10.0.2.jdk
# export JAVA_HOME=$(/usr/libexec/java_home)
# export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
# alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'
eval "$(jenv init -)"
# export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
export JAVA_HOME="$(jenv prefix)"
# <!>-Version-apache-maven-3.6.0
export M2_HOME=${BREW_CELLAR}/maven/3.8.6
# <!>-Version-apache-tomcat-9.0.13
# Configuration files: /usr/local/etc/tomcat
export CATALINA_HOME=${BREW_CELLAR}/tomcat/10.0.23
# export NODE_HOME=/Users/mavavi/dev/servers/node-v4.2.6-darwin-x64
# <!>-Version-NA
export DROID_HOME=/Users/vijish.varghese/Library/Android/sdk
# <!>-Version-NA
export DROID_TOOLS=${DROID_HOME}/platform-tools
# Android NDK
export ANDROID_NDK_HOME=/opt/homebrew/share/android-ndk
# <!>-Version-mongodb-osx-x86_64-4.0.4
export MONGO_HOME=${BREW_PREFIX}/bin/mongo
# <!>-Version-apache-ant-1.10.5
export ANT_HOME=${BREW_CELLAR}/Cellar/ant/1.10.12
# <!>-Version-Apache-solr-7.5.0
export SOLR_HOME=${BREW_CELLAR}/solr/8.11.2
# <!>-Version-Eclipse-jetty-9.4.14.v20181114
export JETTY_HOME=${BREW_CELLAR}/jetty/9.4.48.v2022062
# <!>-Version-apache-cassandra-3.11.3
export CASSA_HOME=${BREW_CELLAR}/cassandra/4.0.5
# <!>-Export NVM HOME
export NVM_HOME=${BREW_CELLAR}/nvm/0.39.1_1
# <!>-Export NGINX_HOME
export NGINX_HOME=${BREW_CELLAR}/nginx/1.23.1
# <!>-KAFKA_HM=/usr/local/Cellar/kafka/3.2.1
export KAFKA_HM=${BREW_CELLAR}/kafka/3.2.1
# <!>-/usr/local/Cellar/jenkins/2.364
export JENKINS_HM=${BREW_CELLAR}/jenkins/2.364
# <!>-/usr/local/opt/grails/libexec
export GRAILS_HM="/usr/local/opt/grails/libexec"
# <!>-/usr/local/bin/go
export GO_HM="/usr/local/bin/go"
# <!>-Export SFCC_CI_HOME where the sfcc-ci-macos lives
export SFCC_CI_HOME=${HOME}/sdk/sfcccli/sfcc-ci
# <!>-Export GCP_CLI_HOME google-cloud-sdk
# export POSTGRESQL_HOME=${BREW_PREFIX}/opt/postgresql@13
export POSTGRESQL_HOME=${BREW_PREFIX}/opt/postgresql@15
# echo "${POSTGRESQL_HOME}"
#
# For more information on how to get started, please visit:
#   https://cloud.google.com/sdk/docs/quickstarts
export GCP_CLI_HOME=${HOME}/sdk/google-cloud-sdk
# <!>-Export LUCENE HOME
# PATH="/usr/local/opt/couchdb-lucene/libexec/clbin:$PATH"
# /usr/local/Cellar/couchdb-lucene/2.1.0_2
export LUCENE_HOME=${BREW_CELLAR}/couchdb-lucene/2.1.0_2
# <!>-Export JMETER HOME
# /usr/local/Cellar/jmeter/5.5
export JMETER_HOME=${BREW_CELLAR}/jmeter/5.5
# RUBY_HOME
# export RUBY_HOME=${HOME}/.rvm/gems/ruby-3.0.0
# PowerShell Home
export PSHOME=/usr/local/bin/pwsh
# <!>-SFCC-CI Parameters
export SFCC_CI_API_KEY='543e30ca-7df6-462b-a7a2-d611bbb2f39b'
export SFCC_CI_API_SECRET='Lpj$e5#zL?f&p3M&'
export SFCC_CI_API_USER='vijish_varghese@belk.com'
export SFCC_CI_API_USER_PW='$&YRmf6E7zqEB'

# Git branch in prompt.- <!> Deprecated with vcprompt on 20181115
parse_git_branch() {
  git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# <!>-COLORIFY--<BEGIN>-
# REF : https://www.ditig.com/256-colors-cheat-sheet
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
# REF : https://geoff.greer.fm/lscolors/
# export LSCOLORS=ExFxCxDxBxegedabagacad
# Current Color Scheme - [08/24/2022, Wednesday @ 18:04:1661378686 EDT]
# export LSCOLORS=CXhxbxfxgxehEcacagacad
export LSCOLORS=hxfxcxdxbxeghdhbagahhc
#https://www.astrobetter.com/blog/2010/08/25/xterm-color/
# export LSCOLORS=Gxfxbxdxcxegedabagacad
#REF : https://gist.github.com/JBlond/2fea43a3049b38287e5e9cefc87b2124
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
# export COLOR_PURPLE='\e[0;35m'
# export COLOR_LIGHT_PURPLE='\e[1;35m'
# Overriding purples with yellow for the time being : viva : 230525
export COLOR_PURPLE='\e[0;33m'
export COLOR_LIGHT_PURPLE='\e[1;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_BOLD_YELLOW='\e[1;33m'
export COLOR_BROWN='\e[0;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'
# <!>-COLORIFY--<-END->-

# <!>-Variables--<BEGIN>-

# <!>-Is Logging Enabled
IS_LOG_ENABLED="ybp"
# IS_LOG_ENABLED="Y"
# IS_LOG_ENABLED="N"

# <!>-Is Version Logging Enabled
IS_VERSION_LOG_ENABLED="ybpv"
# IS_VERSION_LOG_ENABLED="Y"
# IS_VERSION_LOG_ENABLED="N"

# <!>-Is Path Logging Enabled
IS_PATH_LOG_ENABLED="ybpp"
# IS_PATH_LOG_ENABLED="Y"
# IS_PATH_LOG_ENABLED="N"

# <!>-Variables--<END>-

# <!> PATH BACK UP - NOT USED
# export PATH=$PATH:${M2}:/usr/local/mysql/bin:${CATALINA_HOME}/bin:${DROID_H}:${MONGO_HOME}/bin:${NODE_HOME}/bin:/usr/local/sbin
export PATH=${POSTGRESQL_HOME}/bin:$PATH
export PATH=$PATH:$PSHOME:/usr/local/bin:$HOME/.jenv/bin:/usr/local/opt/coreutils/libexec/gnubin:${BREW_PREFIX}/bin:${BREW_PREFIX}/sbin
# usr/local/sbin
export PATH=$PATH:${GCP_CLI_HOME}/bin:${SFCC_CI_HOME}:${JAVA_HOME}/bin:${ANT_HOME}/bin:${CATALINA_HOME}/bin:${DROID_TOOLS}:${M2_HOME}/bin
export PATH=$PATH:${SOLR_HOME}/bin:${JETTY_HOME}/bin:${CASSA_HOME}/bin:${MONGO_HOME}/bin:${JMETER_HOME}/bin
# export PATH=/usr/local/opt/couchdb-lucene/libexec/clbin:KAFKA_HM/bin:JENKINS_HM/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH
# export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin

# For compilers to find postgresql@15 you may need to set:
export LDFLAGS="-L${POSTGRESQL_HOME}/lib"
export CPPFLAGS="-I${POSTGRESQL_HOME}/include"

# echo "${LDFLAGS}"
# echo "${CPPFLAGS}"

# For pkg-config to find postgresql@15 you may need to set:
export PKG_CONFIG_PATH="${POSTGRESQL_HOME}/lib/pkgconfig"

export PG_CONFIG="${POSTGRESQL_HOME}/bin/pg_config"

# echo "${PKG_CONFIG_PATH}"

export EDITOR='subl -w'
# export PATH=$RUBY_HOME/bin:$PATH
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

echo "#--<!>---------------------------------------------------------------------------------x-LOGGER-E-x-<!>"
echo "#                     IS_LOG_ENABLED---------<!>" $IS_LOG_ENABLED
echo "#                           IS_VERSION_LOG_ENABLED-<!>" $IS_VERSION_LOG_ENABLED
echo "#                                 IS_PATH_LOG_ENABLED----<!>" $IS_PATH_LOG_ENABLED
echo "#--<!>---------------------------------------------------------------------------------x-LOGGER-R-x-<!>"

# <!> GLOBAL LOGGING ENABLED STATUS CHECK
if [ "$IS_LOG_ENABLED" == "$FLAG_STATUS" ]; then
  # echo "#---<!>--BREW_PREFIX--<BREW_PREFIX>-x-------------------------------------------------------x"
  echo "#   <!>-----BREW_PREFIX----------<!>" $BREW_PREFIX
  # echo "#---<!>--Inspect--<BEGIN>---#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#"
  if [ "$IS_VERSION_LOG_ENABLED" == "$FLAG_STATUS" ]; then
    echo "#---<!>--ANT_HOME--<ANT_HOME>-x-------------------------------------------------------------x"
    echo $ANT_HOME \[VERSION \-\>\] && ant -v
  else
    echo "#   <!>-----ANT_HOME-------------<!>" $ANT_HOME
  fi

  if [ "$IS_VERSION_LOG_ENABLED" == "$FLAG_STATUS" ]; then
    echo "#---<!>--JAVA_HOME--<JAVA_HOME>-x-----------------------------------------------------------x"
    echo JAVA_HOME------ $JAVA_HOME \[VERSION \-\>\] && java -version
  else
    echo "#   <!>-----JAVA_HOME------------<!>" $JAVA_HOME
  fi

  if [ "$IS_VERSION_LOG_ENABLED" == "$FLAG_STATUS" ]; then
    echo "#---<!>--MAVEN_HOME--<MAVEN_HOME>-x---------------------------------------------------------x"
    echo M2_HOME-------- $M2_HOME \[VERSION \-\>\] && mvn -v
  else
    echo "#   <!>-----M2_HOME--------------<!>" $M2_HOME
  fi
  # echo "#---<!>--CATALINA_HOME--<CATALINA_HOME>-x---------------------------------------------------x"
  echo "#   <!>-----CATALINA_HOME--------<!>" $CATALINA_HOME
  # echo "#---<!>--DROID_HOME--<DROID_HOME>-x---------------------------------------------------------x"
  echo "#   <!>-----DROID_HOME-----------<!>" $DROID_HOME
  # echo "#---<!>--DROID_TOOLS--<DROID_TOOLS>-x-------------------------------------------------------x"
  echo "#   <!>-----DROID_PLATFORM_TOOLS-<!>" $DROID_TOOLS

  if [ "$IS_VERSION_LOG_ENABLED" == "$FLAG_STATUS" ]; then
    echo "#---<!>--MONGO_HOME--<MONGO_HOME>-x---------------------------------------------------------x"
    echo MONGO_HOME-------- $MONGO_HOME \[VERSION \-\>\] && mongo -version
  else
    echo "#   <!>-----MONGO_HOME-----------<!>" $MONGO_HOME
  fi
  # echo "#---<!>--SOLR_HOME--<SOLR_HOME>-x-----------------------------------------------------------x"
  echo "#   <!>-----SOLR_HOME------------<!>" $SOLR_HOME
  # echo "#---<!>--JETTY_HOME--<JETTY_HOME>-x---------------------------------------------------------x"
  echo "#   <!>-----JETTY_HOME-----------<!>" $JETTY_HOME
  # echo "#---<!>--CASSA_HOME--<CASSA_HOME>-x---------------------------------------------------------x"
  echo "#   <!>-----CASSA_HOME-----------<!>" $CASSA_HOME
  # echo "#---<!>--MONGO_HOME--<MONGO_HOME>-x---------------------------------------------------------x"
  echo "#   <!>-----MONGO_HOME-----------<!>" $MONGO_HOME
  # echo "#---<!>--NVM_HOME--<NVM_HOME>-x---------------------------------------------------------x"
  echo "#   <!>-----NVM_HOME-------------<!>" $NVM_HOME
  # echo "#---<!>--NGINX_HOME--<NGINX_HOME>-x---------------------------------------------------------x"
  echo "#   <!>-----NGINX_HOME-----------<!>" $NGINX_HOME
  # echo "#---<!>--SFCC_CI_HOME--<SFCC_CI_HOME>-x---------------------------------------------------------x"
  echo "#   <!>-----SFCC_CI_HOME---------<!>" $SFCC_CI_HOME
  # echo "#---<!>--GCP_CLI_HOME--<GCP_CLI_HOME>-x---------------------------------------------------------x"
  echo "#   <!>-----GCP_CLI_HOME---------<!>" $GCP_CLI_HOME
  # echo "#---<!>--LUCENE_HOME--<LUCENE_HOME>-x---------------------------------------------------------x"
  echo "#   <!>-----LUCENE_HOME----------<!>" $LUCENE_HOME
  # echo "#---<!>--JMETER_HOME--<JMETER_HOME>-x---------------------------------------------------------x"
  echo "#   <!>-----JMETER_HOME----------<!>" $JMETER_HOME
  # echo "#---<!>--JENKINS_HOME--<JENKINS_HOME>-x---------------------------------------------------------x"
  echo "#   <!>-----JENKINS_HOME----------<!>" $JENKINS_HM
  if [ "$IS_VERSION_LOG_ENABLED" == "$FLAG_STATUS" ]; then
    # echo "#---<!>--GRAILS_HOME--<GRAILS_HOME>-x---------------------------------------------------------x"
    echo "#   <!>-----GRAILS_HOME----------<!>" $GRAILS_HM \[VERSION \-\>\] && grails -version
  else
    echo "#   <!>-----GRAILS_HOME-------------<!>" $GRAILS_HM
  fi
  if [ "$IS_VERSION_LOG_ENABLED" == "$FLAG_STATUS" ]; then
    # echo "#---<!>--GO_HOME--<GO_HOME>-x---------------------------------------------------------x"
    echo "#   <!>-----GO_HOME----------<!>" $GO_HM \[VERSION \-\>\] && go version
  else
    echo "#   <!>-----GO_HOME-------------<!>" $GO_HM
  fi
  if [ "$IS_PATH_LOG_ENABLED" == "$FLAG_STATUS" ]; then
    echo "#--<!>---------------------------------------------------------------------------------x--PATH--E-x-<!>"
    echo $PATH
    echo "#--<!>---------------------------------------------------------------------------------x--PATH--R-x-<!>"
  fi
  # echo "#---<!>--Inspect--<<END>>---#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#"

fi

# -<!>-bash-completion--BEGIN--

if type brew &>/dev/null
then
 if [[ -r "${BREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
 then
   source "${BREW_PREFIX}/etc/profile.d/bash_completion.sh"
 else
   for COMPLETION in "${BREW_PREFIX}/etc/bash_completion.d/"*
   do
     [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
   done
 fi
fi

# -<!>-bash-completion--BEGIN--
# bash - completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
[ -f ${BREW_PREFIX}/etc/bash_completion ] && . ${BREW_PREFIX}/etc/bash_completion

# -<!>-bash-completion---END---

# -<!>-gradle-completion--BEGIN--
# Source completion scripts from bash-completion in your bash profile
[ -f $BREW_PREFIX/etc/bash_completion ] && . $BREW_PREFIX/etc/bash_completion
# -<!>-gradle-completion---END---

# -<!>-Colorify & Have Git Branch In Prompt-BASH-<!>--BEGIN--
# -<!>-REF:# <!>-COLORIFY--<BEGIN>- to <!>-COLORIFY--<-END->-

case $TERM in
xterm* | rxvt*)
  TITLEBAR='\[\033]0;\u ${NEW_PWD}\007\]'
  ;;
*)
  TITLEBAR=""
  ;;
esac

UC=$COLOR_WHITE                   # user's color
[ $UID -eq "0" ] && UC=$COLOR_RED # root's color

# <!> Need to -> brew install vcprompt
PS1="$TITLEBAR\n\[${COLOR_GREEN}\]<!> \d \t \[${COLOR_GREEN}\]<!> \[${COLOR_LIGHT_RED}\]\$(vcprompt)\[${COLOR_LIGHT_RED}\]<!> \[${UC}\]\u@\h\[${COLOR_LIGHT_RED}\] <!>\n\[${COLOR_CYAN}\]\${PWD}\n\[${COLOR_LIGHT_GREEN}\] →\[${COLOR_NC}\] "

# <!> Working BackUp as of 20181115 - BEGIN -
# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \e[31m\W\e[0m\$ "
# export PS1="\u@\h \[\033[32m\]\$(parse_git_branch)\[\033[00m\] \e[31m\W\e[0m\$ "
# PS1="$TITLEBAR\n\[${UC}\]\u@\h \[${COLOR_CYAN}\]\${PWD}\[${COLOR_GREEN}\]\$(parse_git_branch) \[${COLOR_BLACK}\]\$(vcprompt) \n\[${COLOR_LIGHT_GREEN}\]→\[${COLOR_NC}\] "
# <!> Working BackUp as of 20181115 - -END- -

# -<!>-Colorify & Have Git Branch In Prompt-BASH-<!>---END---

##
# Your previous ~/.bash_profile file was backed up as ~/.bash_profile.macports-saved_2018-09-24_at_17:09:22
##

# MacPorts Installer addition on 2018-09-24_at_17:09:22: adding an appropriate PATH variable for use with MacPorts.
# export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# <!> TEST AND EXECUTE THE bashrc every time user's bash_profile is executed or terminal is opened.
. ~/.bashrc
# <!>Clearing to have more space on console, scroll up to see the values
# <!> Uncomment to enable if space becomes a concern
# clear

# ==> Source [/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc] in your profile to enable shell command completion for gcloud.
# ==> Source [/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc] in your profile to add the Google Cloud SDK command line tools to your $PATH.
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc' ]; then . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc' ]; then . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'; fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function pause() {
  read -p "$*"
}

# [[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
nvm use --lts #v11.10.1
# nvm use 12.11
#Commented by ViVa on 20210205 as the aliases/shortcuts has been moved to ~/.bash_aliases-----<BEGIN>----------
#echo "#--<!>--------------------------------------------------------------------------------------------e-<!>"
#echo "# <!> BASH > [~/.bash_profile] OR [~/.bash_aliases] OR [~/.bashrc]"
#echo "# <!> MODIFY > {sudo vi[b] / open -a atom [b]} <!> RELOAD > {source [b] / . [b]}"
#echo "# <!> Illustrations -------------------e----------------------"
#echo "# <!> Edit bash* : sudo open -a atom ~/.bash_profile"
#echo "# <!> Reload bash* : . ~/.bash_profile"
#echo "# <!> To Change Aliases : sudo open -a atom ~/.bash_aliases"
#echo "# <!> Illustrations -------------------x----------------------"
#echo "#--<!>--------------------------------------------------------------------------------------------x-<!>"
#Commented by ViVa on 20210205 as the aliases/shortcuts has been moved to ~/.bash_aliases-----<-END->----------
if [[ "$FLAG_STATUS" == "yba" || "$FLAG_STATUS" == "ybpv" || "$FLAG_STATUS" == "ybpp" ]]; then
  echo "# <!>--------------------------------------------< BASH_PROFILE [USING VERSIONS]>------------------------------------------------x--------<!> #" && pause 'Press [return] key to begin...' && clear
fi

echo "# <!>--------------------------------------------< USING BASH PROFILE >------------------------------------------------x--------<!> #"
. "$HOME/.cargo/env"

# Created by `pipx` on 2022-09-01 03:59:00
export PATH="$PATH:$HOME/.local/bin"


# Added by Toolbox App
export PATH="$PATH:/Users/vijish.varghese/Library/Application Support/JetBrains/Toolbox/scripts"


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/vijish.varghese/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
