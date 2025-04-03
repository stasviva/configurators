# <!>------------------------------------------------------------------------------------------------------------------<!> #
# <!>--------------------------------------------BASH_FUNCTIONS--------------------------------------------------------<!> #
# <!>------------------------------------------------------------------------------------------------------------------<!> #
# <!>.bash_functions
# <!>-The place where we could source the files from bashrc


mkcd(){ mkdir "$1" && cd "$1" ; }

flies() {
    N="$(ls $1 | wc -l)";
    echo "$N files in $1";
}

#brew install lynx
netinfo()
{
echo "--------------- Network Information ---------------"
/sbin/ifconfig | awk /'inet addr/ {print $2}'
/sbin/ifconfig | awk /'Bcast/ {print $3}'
/sbin/ifconfig | awk /'inet addr/ {print $4}'
/sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
myip=`lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | sed '/^$/d; s/^[ ]*//g; s/[ ]*$//g' `
echo "${myip}"
echo "---------------------------------------------------"
}

#<!>-ONLY FOR TESTING PURPOSE - NOT USED
gtfilename(){
    local filename="$(date +%Y%m%d%H%M%S)";
    echo $filename;
}
# <!>-Gets Year Value : 2018 -<!> #
gtyear(){
  local yearValue="$(date +%Y)";
  echo "$yearValue";
}
# <!>-Gets Month Value : Jan-Dec -<!> #
gtmonth(){
  #Jan
  local monthValue="$(date +%b)";
  echo "$monthValue";
}
# <!>-Gets Month Long Value : January-December -<!> #
gtlmonth(){
  #January
  local monthLongValue="$(date +%B)";
  echo "$monthLongValue";
}
# <!>-Gets Month Number Value : 1-12 -<!> #
gtnmonth(){
  local monthNumValue="$(date +%m)";
  echo "$monthNumValue";
}
# <!>-Gets Date Value : 1-31 -<!> #
gtdate(){
  local dateValue="$(date +%d)";
  echo "$dateValue";
}
# <!>-Gets Day Value : Mon-Sun -<!> #
gtday(){
  #Tue
  local dayValue="$(date +%a)";
  echo "$dayValue";
}
# <!>-Gets Long Day Value : Monday-Sunday -<!> #
gtlday(){
  #Tuesday
  local dayLongValue="$(date +%A)";
  echo "$dayLongValue";
}
# <!>-Gets Hour Value -<!> #
gthour(){
  local hourValue="$(date +%H)";
  echo "$hourValue";
}
# <!>-Gets Minutes Value -<!> #
gtminute(){
  local minuteValue="$(date +%M)";
  echo "$minuteValue";
}
# <!>-Gets Seconds Value 00-59-<!> #
gtsecond(){
  #local secondValue="$(date +%S)";
  echo "$secondValue";
}
# <!>-Gets Nano Seconds Value 1542751706-<!> #
gtnsecond(){
  #nano seconds 1542751706
  local nanoSecondValue="$(date +%s)";
  echo "$nanoSecondValue";
}

#<!>-TEST COMMAND : bashpr && clear && backitup
#<!>-TEST COMMAND : bashpr && clear && rafflebakup
# <!>-Function specifically used to backup the google raffle information-<!> #
rafflebakup(){
  local bakUpFolderLoc='/viva/cloud/Google/cltcatcom/2018_StMarysRaffle-Bak';
  #testing
  #local bakUpFolderLoc='~/backups';
  local newBakUpFolderName=$(gtyear)$(gtnmonth)$(gtdate)$(gthour)$(gtminute)$(gtnsecond);
  #echo bakUpFolderLoc->  "$bakUpFolderLoc";
  cd "$bakUpFolderLoc";
  #echo newBakUpFolderName-> "$newBakUpFolderName";
  mkdir "$newBakUpFolderName";
  cd "$newBakUpFolderName";
  #echo $(pwd);
  #echo "$bakUpFolderLoc"/"$newBakUpFolderName"
  sudo cp -R /viva/cloud/Google/cltcatcom/2018_StMarysRaffle/* "$bakUpFolderLoc"/"$newBakUpFolderName"
}

#<!>-TEST FUNCTION : COMMAND : bashpr && clear && showresulttest
showresulttest(){
  local tempo=$(gtyear)-$(gtmonth)-$(gtnmonth)-$(gtdate)-$(gtday)-$(gthour)-$(gtminute)-$(gtsecond);
  echo "$tempo";
  local filename=$(gtyear)$(gtnmonth)$(gtdate)$(gthour)$(gtminute)$(gtsecond);
  echo "$filename";
  #<!>TEST - getfilename()
  #result=$(getfilename);
  #<!>TEST - year()
  #result=$(year);
  #<!>TEST - month()
  #result=$(month);
  #<!>TEST - monthn()
  #result="$(monthn)";
  #echo $result;
}

# function myfunc()
# {
#     local  myresult='some value'
#     echo "$myresult"
# }
#
# result=$(myfunc)   # or result=`myfunc`
# echo $result

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
