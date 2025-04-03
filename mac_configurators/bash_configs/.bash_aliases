##### read -p "Should the shortcuts be displayed? (y): " response
#####
##### Convert response to lowercase and check
##### response=${response,,}  # Convert to lowercase
##### $FLAG_STATUS
##### yba - yes bash alias
if [[ "$FLAG_STATUS" == "yba" || "$FLAG_STATUS" == "yes" ]]; then
  # <!>------------------------------------------------------------------------------------------------------------------<!> #
  # <!>--------------------------------------------BASH_ALIASES----------------------------------------------------------<!> #
  # <!>------------------------------------------------------------------------------------------------------------------<!> #
  # echo "#--<!>--------------------------------------------------------------------------------------------x-<!>"
  # echo "# <!> TO MODIFY BASH ALIASES -> sudo vi ~/.bash_aliases OR sudo open -a vsc ~/.bash_aliases"
  # echo "# <!> TO RELOAD/REFRESH BASH ALIASES -> source ~/.bash_aliases or . ~/.bash_aliases"
  echo "# <!>--------------------------------------------< BASH_ALIASES >------------------------------------------------e--------<!> #"
  echo "# <!> Edit profile/aliases/rc/functions -> editbp,editba,editbrc,editbfn,edithosts,editstarship"
  # echo "# <!> [start][stop][bounce] -> (awstransform), (tomcat), (nginx), (mongo)"
  echo "# <!> [id][start][bounce][stop] -> (idserver), (runserver), (bounceserver), (haltserver)"
  echo "# <!> [Open Folder A] -> (tmp,details,manuals,vscwa,mystudydetails, mystudy, cloud, onedrive, dropbox, gdrivebelk, newhorizons)"
  echo "# <!> [Open Folder B] -> (apprebuild, neatscan, family, cota, dev, wa, src, tax, immigration)"
  echo "# <!> [Open Folder C] -> (gtvd) - VDRIVE, (gtvlrn) - vd_learn, (gtsh) - Scripts Home, (gtpy) - PY Scripts Home"
  echo "# <!> [Open WA] -> (detailswa, belksfccwa, mystudydetailswa)"
  echo "# <!> [Reload] -> bash profile/aliases/rc/functions -> reloadbp, reloadba, reloadbrc, reloadfn"
  # echo "# <!> [CLIs] -> startmybox,stopmybox,restartmybox,myboxstatus,cleanstart,purgebbfb4logs,sfcclog,ncli-numi cli"
  echo "# <!> [CLIs] -> (ncli) - numi cli, (py3) - python3, (jvms)-List available JAVA Homes"
  echo "# <!> [EDITORS] -> vsc (VISUAL STUDIO CODE), atom (ATOM), subl (SUBLIME), bbed (BBEDIT), bred (BRACKETS)"
  echo "# <!> [CODERS] -> pyed (PY Charm CE), jaed (Intellij Ultimate), dred (Android Studio), xcod (XCode), swpl (Swift Playgroud)"
  # echo "# <!> [SFCC - CLI] -> sfcli, sfcliauth, sfclisblist, sfclirenewauth, sfclisbdtl, sfclisbact, sfclisearchsb"
  # echo "# <!> [SRCs] -> belkcore, belkmobileapp, setnvm"
  echo "# <!> [CD] -> cda, cdb, cdc, cdd, cde"
  echo "# <!> [SRCs] -> setnvm"
  echo "# <!> [GITC] -> gbjira, gbstatus, gbpbase, gbranch, gbdel, gbcom, gbpush, gssh, gsshadd, gbconfig"
  echo "# <!> [CMDs] -> ltra, uhm, rhm, vfreeport, cpwd, runserver, haltserver, scriptshm, jenv_set_java_home"
  echo "# <!> [MAPP] -> iosappstart, belkmobileapp, openiosws"
  echo "# <!> [SEPA] -> sepad [Date], sepae [ENTRY][Date, LogTag], separ [RETURN][Date, LogTag], sepas [symbol, length]"
  echo "# <!> [APPS] -> typingmaster, meld, diffmerge"
  echo "# <!> [BREW] -> bprefix, bcellar, bservices"
  echo "# <!> [SHRT] -> luno-dos-tres, lnabct-yz, ln-15-2125-2630-3135-3640t, lnr123-456-789t, lnr-123-456-789-t"
  echo "# <!> [SHRT] -> dtodo, ttag, gotoscripts, gtvd, gtsh, gtpy, subl, bbed, bred, pyed, jaed, dred, xcod, swpl, sptl"
  echo "# <!> [UTLS] -> keepmealive, filenamer, 64codec, editrcloneconfig, verhis, opendailytodo, strlen"
  echo "# <!> [UTLS] -> gfp [Get File Path], fnc [File Name Creator], camelc [Camel Caser]"
  echo "# <!> [STMP] -> stampIt [t] time, [d] date, [n] name, [T] date time, [D] name date, [N] name date time"
  echo "# <!> [GOTO] -> goto [h] head on terminal, [t] tail on terminal, [H] head to file, [T] tail to file"
  echo "# <!> [GOTOH/T] -> gotoh [h] head on terminal, gotot [t] tail on terminal"
  echo "# <!> [NTW] -> iplocal[local IP], ippub[public IP]"
  echo "# <!> [INFO] -> gdate would be used for date from coreutils"
  echo "# <!>--------------------------------------------< BASH_ALIASES >------------------------------------------------x--------<!> #"
fi

ONE_DRIVE_HOME="/Users/viva/Library/CloudStorage/OneDrive-Personal"

V_DRIVE="/Users/vijish.varghese/VDrive"
LRN_HOME="${V_DRIVE}/vd_learn"
SCRIPTS_HOME="${V_DRIVE}/vd_scripts/97_scripts"
PY_SCRIPTS_HOME="${V_DRIVE}/vd_scripts/97_py_scripts"
alias gtvd="cd ${V_DRIVE}"
alias gtvlrn="cd ${LRN_HOME}"
alias gtsh="cd ${SCRIPTS_HOME}"
alias gtpy="cd ${PY_SCRIPTS_HOME}"

alias myqueue="open https://qvcprod.service-now.com/itsp?id=itsp_index"

alias v2025="cd /Users/vijish.varghese/Library/CloudStorage/OneDrive-QVC\,Inc/QRG_Ref_OD/2025 && open ."
alias v2025holidays="open /Users/vijish.varghese/Library/CloudStorage/OneDrive-QVC\,Inc/QRG_Ref_OD/2025/9000_2025_Holidays/2025-holiday-schedule.pdf"

vsc_app="/Applications/Visual Studio Code.app"
ATOM_APP="/Applications/Atom.app"
SUBLIME_APP="/Applications/Sublime\ Text.app"
BBEDIT_APP="/Applications/BBEdit.app"
BRACKETS_APP="/Applications/Brackets.app"

# icloud drive folder quick access
alias icdrive="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"

alias subl="open $SUBLIME_APP"
alias bbed="open $BBEDIT_APP"
alias bred="open $BRACKETS_APP"

PY_CHARM_CE="/Applications/PyCharm\ CE.app"
INTELLIJ_IDEA_ULTIMATE="/Applications/IntelliJ\ IDEA.app"
ANDROID_STUDIO="/Applications/Android\ Studio.app"
XCODE="/Applications/Xcode.app"
SWIFT_PLAYGROUNDS="/Applications/Playgrounds.app"
SPRING_TOOLS_SUITE="/Applications/SpringToolSuite4.app"

alias pyed="open $PY_CHARM_CE"
alias jaed="open $INTELLIJ_IDEA_ULTIMATE"
alias dred="open $ANDROID_STUDIO"
alias xcod="open $XCODE"
alias swpl="open $SWIFT_PLAYGROUNDS"
alias sptl="open $SPRING_TOOLS_SUITE"

#####EDITOR CONFIGURATION FOR BASH
SHELL_EDITOR_APP=$ATOM_APP
SHELL_EDITOR="open -a $SHELL_EDITOR_APP"
SU_SHELL_EDITOR="sudo open -a $SHELL_EDITOR_APP"

# echo ${SCRIPTS_HOME}
# echo ${V_DRIVE}

alias jvms="/usr/libexec/java_home -V"
alias py3='python3'
alias ncli='/opt/homebrew/bin/numi-cli'
# Get File Path
alias gfp='py3 ${PY_SCRIPTS_HOME}/vpy_modules/commons/fio/get_file_path_v.py'
# File Name Creator
alias fnc='py3 ${PY_SCRIPTS_HOME}/vpy_modules/commons/fio/read_input_till_enter_v.py'
# Camel Caser
alias camelc='py3 ${PY_SCRIPTS_HOME}/vpy_modules/commons/fio/to_camel_case_v.py'



####----<!>--My Py Utils----------------------------------------<BEGIN>------------------------------------------------<!>
##~~~~[Wed Mar 05 2025  4:40PM (EST-0500)]  :~
##~~~~λ versioner
##~~~~Enter a space-separated sentence (or 'x!' to exit): vish is the best
##~~~~Enter the version number (e.g., 2): 3
##~~~~Enter the file extension (e.g., txt): py
##~~~~Enter the separator for camelCase transformation (default is ''):
##~~~~Include current timestamp? (n/y/s/e/b, default is n): e
##~~~~Output (copied to clipboard): vishIsTheBest_3v_20250305164059561.py
##~~~~
##~~~~Press Enter to continue...
# alias versioner='py3 ${PY_SCRIPTS_HOME}/vpy_modules/commons/dio/prog_File_Name_Generator_9av_20250305162717331.py'
alias versioner='py3 ${PY_SCRIPTS_HOME}/vpy_modules/commons/dio/progFileNameGen_10av_20250305163835901.py'
alias commenter='py3 ${PY_SCRIPTS_HOME}/vpy_modules/commons/dio/comment_generator_4v.py'
alias appenddt='py3 ${PY_SCRIPTS_HOME}/vpy_modules/commons/dio/dateBasedFileNameAppender_1v.py'
alias urlformer='py3 ${PY_SCRIPTS_HOME}/vpy_modules/commons/dio/url_former_4v.py'
alias quicklinks='py3 ${PY_SCRIPTS_HOME}/vpy_modules/commons/dio/quick_links_a_1v.py'

####----<!>--My Py Utils----------------------------------------<-END->------------------------------------------------<!>



# https://opensource.com/article/19/7/bash-aliases
alias ls='ls -F'
alias ll='ls -lh'
# Mac Complaining : ls: unrecognized option `--human-readable'
# alias lt='ls --human-readable --size -1 -S --classify'
alias lt='du -sh * | sort -h'
# Sort by modification time
alias left='ls -t -1'
# Add a copy progress bar
alias cpv='rsync -ah --info=progress2'
# https://dev.to/joaovitor/exa-instead-of-ls-1onl
#alias l='exa'
alias la='exa -a'
alias ll='exa -lah'
alias lsa='exa --color=auto'
alias ncal='numi-cli'
alias ccal='calc'

alias cda='cd ..'
alias cdb='cd .. && cd ..'
alias cdc='cd .. && cd .. && cd ..'
alias cdd='cd .. && cd .. && cd .. && cd ..'
alias cde='cd .. && cd .. && cd .. && cd .. && cd ..'

# Thu Jun  1 11:27:51 EDT 2023
# [ViVa @ 04-Apr-2024,Thu 11:30 EDT]
# Intel Mac - cellar="cd /usr/local/Cellar"
# M1 Mac    - cellar="cd /opt/homebrew/Cellar"
alias bprefix='brew --prefix'
alias bcellar='cd $(brew --prefix)/Cellar'
alias bservices='brew services list'

alias date='gdate'

alias vsc="open -a Visual\ Studio\ Code.app"

alias localfontdir="open ~/.local/share/fonts/"
alias usrconfigs="open ~/.config/"
alias editjrnl="atom -a ~/.config/jrnl/jrnl.yaml"

# [ViVa @ 04-Apr-2024,Thu 11:36 EDT] Commented out as it is obselete kept for ref, can be moved on a later version once version controlled.
# <!>-AWS DEV OPS TRANSFORM SERVER START STOP REBOOT --BEGIN--
# alias startawstransform='aws ec2 start-instances --instance-ids i-08b95a4757677d70b'
# alias stopawstransform='aws ec2 stop-instances --instance-ids i-08b95a4757677d70b'
# alias bounceawstransform='aws ec2 reboot-instances --instance-ids i-08b95a4757677d70b'

# [ViVa @ 04-Apr-2024,Thu 11:37 EDT] - To be revisited as part of automator learning
# alias keepmealive='. $SCRIPTS_HOME/keepmelive.sh'
alias filenamer='. $SCRIPTS_HOME/filenamer.sh'
alias 64codec='. $SCRIPTS_HOME/base64_encode_decode.sh'
alias strlen='. $SCRIPTS_HOME/strlen.sh'

alias sepad='. $SCRIPTS_HOME/separator_date.sh'
alias sepae='. $SCRIPTS_HOME/separator_entry.sh'
alias separ='. $SCRIPTS_HOME/separator_return.sh'
alias sepas='. $SCRIPTS_HOME/separator_symbol.sh'

alias daij='. $SCRIPTS_HOME/daij_jrnl.sh'

alias opendailytodo="open -a '/Applications/Microsoft Word.app/Contents/MacOS/Microsoft Word' '~/Documents/DailyToDoTemplate_202109214143723.dotx'"
# alias typingmaster='. /Users/afuvxv2/Library/PlayOnMac/shortcuts/tmaster'
# alias typingmaster='. $SCRIPTS_HOME/typingmaster.sh'
alias typingmaster="open -a '/Applications/PlayOnMac.app/Contents/MacOS/playonmac' '~/Library/PlayOnMac/wineprefix/TypingMaster_/drive_c/tmaster.exe'"

alias meld='/Applications/Meld.app/Contents/MacOS/Meld'
alias diffmerge='/Applications/DiffMerge.app/Contents/MacOS/DiffMerge'

alias startmybox='. $SCRIPTS_HOME/startmybox.sh'
alias stopmybox='. $SCRIPTS_HOME/stopmybox.sh'
alias restartmybox='. $SCRIPTS_HOME/restartmybox.sh'
alias purgebbfb4logs='. $SCRIPTS_HOME/bbfb4_log_purger.sh'
alias cleanstart='purgebbfb4logs R && restartmybox'
alias editrcloneconfig='atom -a ~/.config/rclone/rclone.conf'
alias myboxstatus='. $SCRIPTS_HOME/myboxstatus.sh'

alias stampIt='sh $SCRIPTS_HOME/dateit.sh'
alias goto='clear && sh $SCRIPTS_HOME/goto.sh'
alias gotoh='clear && sh $SCRIPTS_HOME/goto.sh -h'
alias gotot='clear && sh $SCRIPTS_HOME/goto.sh -t'

alias iosappstart='. $SCRIPTS_HOME/ios_reactnative_start.sh'

alias sfcclog='node /Applications/dw_logTool/log'
alias logb4='node /Applications/dw_logTool/log bbfb4'


alias idserver='. ${SCRIPTS_HOME}/ .sh'
alias runserver='. ${SCRIPTS_HOME}/server_start.sh'
alias haltserver='. ${SCRIPTS_HOME}/server_stop.sh'
alias bounceserver='. ${SCRIPTS_HOME}/server_bounce.sh'
alias vfreeport='. ${SCRIPTS_HOME}/port_terminator.sh'

# START/RESTART(BOUNCE)/STOP(HALT) A Brew Service--BEGIN--
alias bsvc='. ${SCRIPTS_HOME}/brew_svs_start_stop_bounce.sh'
# START/RESTART(BOUNCE)/STOP(HALT) A Brew Service---END---

# Copy the PWD to the Clipboard
alias cpwd="pwd | tr -d '\n' | pbcopy && echo '<!>---[[INFO]]---pwd copied to CLIPBOARD !!!'"
alias scriptshm='cd ${SCRIPTS_HOME}'
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'
#
# alias sfci='. /Users/afuvxv2/sdk/sfcccli/sfcc-ci/sfcc-ci-macos'
alias belkcore='cd /Users/afuvxv2/src/belk/sfcc/belk_core/demandware'
alias belkmobileapp='cd /Users/afuvxv2/src/belk/mapp-react/belkmobileapp && nvm use 14.17.6'
alias openiosws="open -a xcode '/Users/afuvxv2/src/belk/mapp-react/belkmobileapp/ios/belk.xcworkspace'"
alias setnvm='nvm use 14.17.6'

### alias editbp='sudo open subl ~/.bash_profile'
### # alias editbp='sudo open -a Sublime\ Text.app ~/.bash_profile'
### alias editba='sudo open -a Sublime\ Text.app ~/.bash_aliases'
### alias editbrc='sudo open -a Sublime\ Text.app ~/.bashrc'
### alias editbfn='sudo open -a Sublime\ Text.app ~/.bash_functions'
### alias edithosts='sudo Sublime\ Text.app -a /private/etc/hosts'
### alias editstarship='open -a Sublime\ Text.app ~/.config/starship.toml'

####### Deprecated on 2023.12.28.9.45.06.CDT as started getting error
####### [Thu Dec 28 2023  9:32AM (CST-0600)]  :~
####### λ editba
####### sudo: atom: command not found
### alias editbp='sudo atom -a ~/.bash_profile'
### alias editba='sudo atom -a ~/.bash_aliases'
### alias editbrc='sudo atom -a ~/.bashrc'
### alias editbfn='sudo atom -a ~/.bash_functions'
### alias edithosts='sudo atom -a /private/etc/hosts'
### alias editstarship='atom -a ~/.config/starship.toml'
####### Deprecated on 2023.12.28.9.49.46.CDT as moving it to a pointer instead of sticky reference
### alias editbp='sudo open -a atom ~/.bash_profile'
### alias editba='sudo open -a atom ~/.bash_aliases'
### alias editbrc='sudo open -a atom ~/.bashrc'
### alias editbfn='sudo open -a atom ~/.bash_functions'
### alias edithosts='sudo open -a atom /private/etc/hosts'
### alias editstarship='open -a atom ~/.config/starship.toml'
####### Using sh_editor alias to configure the editor at a single point for better maintainability
alias editbp="$SU_SHELL_EDITOR ~/.bash_profile"
alias editba="$SU_SHELL_EDITOR ~/.bash_aliases"
alias editbrc="$SU_SHELL_EDITOR ~/.bashrc"
alias editbfn="$SU_SHELL_EDITOR ~/.bash_functions"
alias edithosts="$SU_SHELL_EDITOR /private/etc/hosts"
alias editstarship="$SHELL_EDITOR ~/.config/starship.toml"

#sfcli, sfcliauth, sfclisblist, sfclirenewauth, sfclisbdtl, sfclisbact, sfclisearchsb
#### alias sfcli='sfcc-ci-macos'
#### alias sfcliauth='sfcli client:auth $SFCC_CI_API_KEY $SFCC_CI_API_SECRET $SFCC_CI_API_USER $SFCC_CI_API_USER_PW --renew'
#### alias sfclirenewauth='sfcc-ci client:auth:renew'
#### alias sfclisblist="sfcli sandbox:list -S instance -j | jq -C '.[] | {ods: .realm, number: .instance, odsId: .id, state: .state}'"
#### alias sfclisbdtl='. ${SCRIPTS_HOME}/sfcc_cli_sb_dtls.sh'
#### alias sfclisbact='. ${SCRIPTS_HOME}/sfcc_cli_sb_start-stop-restart.sh'
#### alias sfclisearchsb='. ${SCRIPTS_HOME}/sfcc_cli_sb_id_search.sh'

#Folder Shortcuts
alias tmp='open ~/tmp'
alias details='open ${V_DRIVE}/vd_details'
#### alias mystudydetails='open /Users/afuvxv2/Cloud/OneDrive/mystudyv/mystudyv_details'
#### alias manuals='open /Users/afuvxv2/Cloud/OneDrive/Manuals'
#### alias vscwa='open /Users/afuvxv2/Cloud/OneDrive/Treasures-n-Utils/visual_studio_code/vsc_workspace'
#### alias mystudy='open /Users/afuvxv2/Cloud/OneDrive/MyStudy'
#### #Cloud Folders
#### alias cloud='open /Users/afuvxv2/Cloud/OneDrive/cloud'
#### alias onedrive='open /Users/afuvxv2/Cloud/OneDrive'
#### alias dropbox='open /Users/afuvxv2/Cloud/OneDrive/cloud/Dropbox'
#### alias gdrivebelk='open /Users/afuvxv2/Google\ Drive\ \(vijish_varghese@belk.com\)/'
#### #Quick Ref Folders
#### alias newhorizons='open /Users/afuvxv2/Cloud/OneDrive/Career/05_Belk/2020_NewHorizons'
#### alias apprebuild='open /Users/afuvxv2/Cloud/OneDrive/Career/05_Belk/Mobile/Mobile\ App\ Rebuild'
alias dev='open ~/dev'
alias wa='open ~/dev/wa'
alias src='open ~/src'
#WorkArea/WorkSpace Shortcuts
#### alias belksfccwa='code -a /Users/afuvxv2/Cloud/OneDrive/Treasures-n-Utils/visual_studio_code/vsc_workspace/belk_sfcc.code-workspace'
#### alias detailswa='code -a /Users/afuvxv2/Cloud/OneDrive/Treasures-n-Utils/visual_studio_code/vsc_workspace/details_persona.code-workspace'
#### alias mystudydetailswa='code -a /Users/afuvxv2/Cloud/OneDrive/Treasures-n-Utils/visual_studio_code/mystudyv_details.code-workspace'
#### #Personal Quick Folders
#### alias family='open /Users/afuvxv2/Cloud/OneDrive/Family'
#### alias cota='open /Users/afuvxv2/Cloud/OneDrive/Family/04_MatthewJosephMaroky/COTA'
#### alias neatscan='open /Users/afuvxv2/Cloud/OneDrive/Neat_Scan'
#### alias tax='open /Users/afuvxv2/Cloud/OneDrive/Tax'
#### alias immigration='open /Users/afuvxv2/Cloud/OneDrive/Immigration'

alias typingmaster='open /Applications/PlayOnMac.app'

alias gbstatus='git status'
alias gbpbase='git pull --rebase --autostash'
alias gbranch='. $SCRIPTS_HOME/gbranch.sh'
alias gbdel='. $SCRIPTS_HOME/gbdel.sh'
alias gbcom='. $SCRIPTS_HOME/gcom.sh'
alias gbjira='. $SCRIPTS_HOME/gjira.sh'
alias gbpush='. $SCRIPTS_HOME/gpush.sh'
alias gbconfig='sh $SCRIPTS_HOME/gconfig.sh'
alias gssh='eval $(ssh-agent)'
alias gsshadd='ssh-add --apple-use-keychain ~/.ssh/id_rsa'


# alias dtodo='. $SCRIPTS_HOME/dtodo.sh'
alias dtodo='. $SCRIPTS_HOME/dtodo_file_select.sh'
alias verhis='. $SCRIPTS_HOME/verhis.sh'

alias gotoscripts='cd $SCRIPTS_HOME'

# <!>-AWS DEV OPS TRANSFORM SERVER START STOP REBOOT ---END---

# <!>-LOCAL TOMCAT SERVER START STOP --BEGIN--
alias starttomcat='sudo sh ~/Library/tomcat/bin/startup.sh'
alias stoptomcat='sudo sh ~/Library/tomcat/bin/shutdown.sh'
# <!>-LOCAL TOMCAT SERVER START STOP ---END---

# <!>-LOCAL NGINX SERVER START STOP --BEGIN--
alias startnginx='sudo nginx'
alias stopnginx='sudo nginx -s stop'
# <!>-LOCAL NGINX SERVER START STOP ---END---

# <!>-LOCAL MONGO SERVER START STOP --BEGIN--
# <!>-Local Mongo DB Location : /Users/afuvxv2/data/mongo_db
alias startmongo='mongod --dbpath ~/data/mongo_db'
# <!>-LOCAL MONGO SERVER START STOP --BEGIN--

# <!>-LOCAL USEFUL ALIASES --BEGIN--

# <!>-1-list with sort desc based on the creation time-<!>
alias ltra='ls -ltra | more'

# <!>-2-Go to user home or root home
alias uhm='cd ~'
alias rhm='cd /'

# <!>-3-Generate a random 20 character password using OpenSSL.-<!>
alias randpass="openssl rand -base64 20"

# <!>-4-Quickly reload .bash_profile to enable changes.
alias reloadbp='. ~/.bash_profile'
alias reloadba='. ~/.bash_aliases'
alias reloadbrc='. ~/.bashrc'
alias realoadfn='source ~/.bash_functions'

alias ttag='echo -e "* [ ] "  && echo -e "* [ ] " | pbcopy'

# THIS QUALIFIES FOR A SCRIPT {

alias luno='echo "-------" && echo "-------" | pbcopy'
alias ldos='echo "-------------" && echo "-------------" | pbcopy'
alias ltres='echo "-------------------" && echo "-------------------" | pbcopy'

alias lnabct='echo -e "* [ ]----a.] \n* [ ]----b.] \n* [ ]----c.] " && echo -e "* [ ]----a.] \n* [ ]----b.] \n* [ ]----c.] " | pbcopy'
alias lndeft='echo -e "* [ ]----d.] \n* [ ]----e.] \n* [ ]----f.] " && echo -e "* [ ]----d.] \n* [ ]----e.] \n* [ ]----f.] " | pbcopy'
alias lnghit='echo -e "* [ ]----g.] \n* [ ]----h.] \n* [ ]----i.] " && echo -e "* [ ]----g.] \n* [ ]----h.] \n* [ ]----i.] " | pbcopy'
alias lnjklt='echo -e "* [ ]----j.] \n* [ ]----k.] \n* [ ]----l.] " && echo -e "* [ ]----j.] \n* [ ]----k.] \n* [ ]----l.] " | pbcopy'
alias lnmnot='echo -e "* [ ]----m.] \n* [ ]----n.] \n* [ ]----o.] " && echo -e "* [ ]----m.] \n* [ ]----n.] \n* [ ]----o.] " | pbcopy'
alias lnpqrt='echo -e "* [ ]----p.] \n* [ ]----q.] \n* [ ]----r.] " && echo -e "* [ ]----p.] \n* [ ]----q.] \n* [ ]----r.] " | pbcopy'
alias lnstut='echo -e "* [ ]----s.] \n* [ ]----t.] \n* [ ]----u.] " && echo -e "* [ ]----s.] \n* [ ]----t.] \n* [ ]----u.] " | pbcopy'
alias lnvwxt='echo -e "* [ ]----v.] \n* [ ]----w.] \n* [ ]----x.] " && echo -e "* [ ]----v.] \n* [ ]----w.] \n* [ ]----x.] " | pbcopy'
alias lnyzt='echo -e "* [ ]----y.] \n* [ ]----z.] " && echo -e "* [ ]----y.] \n* [ ]----z.] " | pbcopy'

alias ln15t='echo -e "* [ ] 01.] \n* [ ] 02.] \n* [ ] 03.] \n* [ ] 04.] \n* [ ] 05.] " && echo -e "* [ ] 01.] \n* [ ] 02.] \n* [ ] 03.] \n* [ ] 04.] \n* [ ] 05.] " | pbcopy'
alias ln610t='echo -e "* [ ] 06.] \n* [ ] 07.] \n* [ ] 08.] \n* [ ] 09.] \n* [ ] 10.] " && echo -e "* [ ] 06.] \n* [ ] 07.] \n* [ ] 08.] \n* [ ] 09.] \n* [ ] 10.] " | pbcopy'
alias ln1115t='echo -e "* [ ] 11.] \n* [ ] 12.] \n* [ ] 13.] \n* [ ] 14.] \n* [ ] 15.] " && echo -e "* [ ] 11.] \n* [ ] 12.] \n* [ ] 13.] \n* [ ] 14.] \n* [ ] 15.] " | pbcopy'
alias ln1620t='echo -e "* [ ] 16.] \n* [ ] 17.] \n* [ ] 18.] \n* [ ] 19.] \n* [ ] 20.] " && echo -e "* [ ] 16.] \n* [ ] 17.] \n* [ ] 18.] \n* [ ] 19.] \n* [ ] 20.] " | pbcopy'
alias ln2125t='echo -e "* [ ] 21.] \n* [ ] 22.] \n* [ ] 23.] \n* [ ] 24.] \n* [ ] 25.] " && echo -e "* [ ] 21.] \n* [ ] 22.] \n* [ ] 23.] \n* [ ] 24.] \n* [ ] 25.] " | pbcopy'
alias ln2630t='echo -e "* [ ] 26.] \n* [ ] 27.] \n* [ ] 28.] \n* [ ] 29.] \n* [ ] 30.] " && echo -e "* [ ] 26.] \n* [ ] 27.] \n* [ ] 28.] \n* [ ] 29.] \n* [ ] 30.] " | pbcopy'
alias ln3135t='echo -e "* [ ] 31.] \n* [ ] 32.] \n* [ ] 33.] \n* [ ] 34.] \n* [ ] 35.] " && echo -e "* [ ] 31.] \n* [ ] 32.] \n* [ ] 33.] \n* [ ] 34.] \n* [ ] 35.] " | pbcopy'
alias ln3640t='echo -e "* [ ] 36.] \n* [ ] 37.] \n* [ ] 38.] \n* [ ] 39.] \n* [ ] 40.] " && echo -e "* [ ] 36.] \n* [ ] 37.] \n* [ ] 38.] \n* [ ] 39.] \n* [ ] 40.] " | pbcopy'

alias lnr123t='echo -e "* [ ]----------i.] \n* [ ]---------ii.] \n* [ ]--------iii.] " && echo -e "* [ ]----------i.] \n* [ ]---------ii.] \n* [ ]--------iii.] " | pbcopy'
alias lnr456t='echo -e "* [ ]---------iv.] \n* [ ]----------v.] \n* [ ]---------vi.] " && echo -e "* [ ]---------iv.] \n* [ ]----------v.] \n* [ ]---------vi.] " | pbcopy'
alias lnr789t='echo -e "* [ ]--------vii.] \n* [ ]-------viii.] \n* [ ]---------ix.] " && echo -e "* [ ]--------vii.] \n* [ ]-------viii.] \n* [ ]---------ix.] " | pbcopy'

# }

# <!>-5-Print out the local IP on en0.
alias iplocal='ifconfig en0 | grep --word-regexp inet | awk "{print $2}"'

# <!>-6-Print out the public ip address.
alias ippub="dig +short myip.opendns.com @resolver1.opendns.com"

# VTODO: To Fix
# <!>-7-How about we make our process table searchable. We can create an alias that searches our process for an argument we'll pass:
# alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# VTODO: To Fix
# <!>-8-Search for running processes.
# alias psg='ps -ef | grep '
# <!>-LOCAL USEFUL ALIASES ---END---

source ~/.nvm/nvm.sh
#Commented by ViVa on 20210205 as this code in here would create additional 'Press [return] key to begin...' -----<BEGIN>----------
#
#function pause(){
#   read -p "$*"
#}

#pause 'Press [return] key to begin...' && clear
#Commented by ViVa on 20210205 as this code in here would create additional 'Press [return] key to begin...' -----<-END->----------
