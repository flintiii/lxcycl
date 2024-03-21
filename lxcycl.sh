#! /usr/bin/bash
# Mon 04 Mar 2024 05:49:08 PM EST 
name="LinuX Containter CYCle"
pname="lxcycl.sh"
version="0.2024.03.21"
#
# Fri 23 Feb 2024 11:38:56 AM EST 
# Install docker as part of sane.
#
#
function help(){
#* function help  - Help function for template basic help goes here
clear;
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version; uroot #deb
#
cat $0 | grep '^## ' | sed -e 's/##//'
# echo "This is the help function"
##                        *****DOCUMENTATION*****
##  You get this when you put in the wrong number or type of arguments...
##  The name of this program is lxcycl.sh. This is released under GPL I
##  The syntax is functionally divided:
## System
##  - sane       - Checks that you have the stuff you need.
##  - adalias    - Adds flint custom alias file to user space.
##  - gdriver    - Installs Google Drive Drivers.
##  - mtgd       - Mounts flint's Google Drive to ~/Gdrive.
##  - utgd       - Unmounts flint's Google Drive from ~/Gdrive.
##  - wwww       - Gathers and prints the data used by flink/flunk.
##  - flink/flunk- Patches or removes argumment to current user path.
##  - bupdate    - update packages and backup package file.
## Containers 
##  - dkrlst        - lists docker images.
##  - create <NAME> - creates a docker instance.
##  - update <NAME> - updates your git repository.
##  - dkrcon <NAME> - starts and connects to local docker instance.
##  - dkrdel <NAME> - deletes local docker instance.
## Python
##  - inspy24    - installs python 2.4 on current system.
## Zope
##  - inszp21    - installs 2.10 version of zope on current system.
## Data
##  - dupdate    - update Data.fs locally
##  - tpiclle    - tests Data.fs locally
##    *** NOTE *** Most commands need to be run as root.
##  For structure information type "grep '^\#\*' lxcycl.sh"
} # Test: lxcycl.sh help
#
#
function dummy(){
#* function dummy - Rename and fill stuff in between braces
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: lxcycl.sh dummy
#
#
#
function ddkr(){
#* function ddkr - docker hunting
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# uroot
./lxcycl.sh  dkrlst 
read
cat /tmp/tasklst |cut -c16- | cut -c-16 |while read line; 
do  
	echo "distroyiing "$line
	read
	echo docker stop $line; 
	echo docker rm $line; 
done
} # Test: lxcycl.sh dummy
#
function dkrlst(){
#* function dkrlst - lists docker images
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# uroot
clear
docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Image}}"
} # Test: lxcycl.sh lxc-create
#
#
function create(){
#* function lxc-create - creates a dicker instance with NAME
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: lxcycl.sh lxc-create
#
#
function update(){
#* function lxc-update - updates your git repository.
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: lxcycl.sh lxc-update
#
#
function dkrcon(){
#* function dkrcon - connedts to local instance.
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# uroot
} # Test: lxcycl.sh lxc-update
#
#
function dkrdel(){
#* function dkrdel - deletes the local image and container.
# SOURCE:https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# uroot
echo "Want to remove " $var2 "?"
spause
docker rm $var2
} # Test: lxcycl.sh dkrdel
#
function inszp21(){
#* function inszp21 -  installs zope on current system.
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: lxcycl.sh inszp21
#
function inspy24(){
#* function inspy24 -  installs python 2.4 on current system.
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: lxcycl.sh inspy24
#
function dupdate(){
#* function dupdate - Rename and fill stuff in between braces
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: lxcycl.sh dupdate
#
function tpiclle(){
#* function tpiclle - Tests Data.fs locally.
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: lxcycl.sh tpiclle
#
function adalias(){
#* function adalias - Adds the aliases you want in your .bash_aliases
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
echo "Entry"
# uroot
wget http://docbox.flint.com/~flint/bin/.bash_aliases
wget http://docbox.flint.com/~flint/bin/bash_aliases.sh
chmod +x bash_aliases.sh
echo "remember!  Type the following:"
echo ". ./bash_aliases.sh"
echo "That's all folks!"
} # Test: lxcycl.sh adalias
#
#
function bupdate(){
#* function bupdate - Updates package lists & backups packages
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
# update packages
echo "Now you need root"
sudo apt-get update
#
# now update package file
echo "writing packages_$(date +%F)"
dpkg --get-selections > packages_$(date +%F)
#
clear
echo "To restore packages try this:"
echo " ls -alt | grep packages"
echo " dpkg --set-selections < packages"
echo " apt-get dselect-upgrade"
#
} # Test: lxcycl.sh bupdate
#
#
function setalias(){
#* function setalias - sets the alias features we like
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
# set alias
#
cd ~
mkdir -p ~/obe
cp .bash_aliases obe/$(date +%F)_.bash_aliases
wget http://docbox.flint.com/~flint/bin/.bash_aliases
} # Test: lxcycl.sh setalias
#
#
#
#*####################################STANDARD AND MAYBE USEFUL FUNCTIONS BELOW
#
function gdrvr(){
#* function gdrvr - install gdrive drivers
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# you really need root here...
uroot
#
# Mounts Google Drive
# SOURCE:https://www.google.com/search?channel=fs&client=ubuntu-sn&q=access+google+drive+via+linux+command+line
# 		 https://github.com/astrada/google-drive-ocamlfuse
#
# connect x from any port
xhost +
echo "xhost done"
# dune build @install
# dune build @install
# google-drive-ocamlfuse Desktop/gdrive
google-drive-ocamlfuse ~rick/Gdrive -o nonempty
echo "all done"
exit
#
## Install Drivers
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt-get install google-drive-ocamlfuse
SUDO apt-get install ocaml-dune
#
} # Test: lxcycl.sh gdrvr
#
function mtgd(){
#* function mtgd - mount gdrive
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
#
apt-get install avahi-daemon avahi-utils avahi-discover
service avahi-daemon restart
} # Test: lxcycl.sh mtgd
#
#
function wwww(){
#* function wwww - Get Who What When Where and Why
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
#
FILE="/tmp/stuff_$(date +%F)"; echo $FILE
echo "Making the file /tmp/stuff_$(date +%F)"
# trap "set +x; sleep 5; set -x" DEBUG
#
# Note this starts file...
HMDIR=$(pwd); 
echo $HMDIR" This is the home directory Variable HMDIR"; echo "HMDIR = "$HMDIR > $FILE
# LUSER=$(echo $HMDIR |cut -d "/" -f 1) 
# LUSER=$(echo $HMDIR |cut -d "/" -f 3) 
LUSER=$(echo $HMDIR |cut -d "/" -f 3) 
# LUSER="hello" 
echo $LUSER" was the user before you took root";echo "LUSER = "$LUSER >> $FILE 
# 'Note user was " $LUSER " before you took root'; echo "LUSER = "$LUSER >> $FILE
# tee $($HMDIR) $FILE
echo $FILE
cat $FILE
# echo 'This must be all be stored in /tmp/$USER Note name must be "$USER", fix in 2.0'
# echo "This is what is in the path  "$PATH
# PATH=$PATH+
# echo "New Path " 
# echo $PATH| tr ":" "\n"  # Very Cool
# LKDIR=$(echo $PATH |cut -d ":" -f32): echo $LKDIR " - is is the link directory" 
# FNAME=$var2; echo $HMDIR"  This is the name of the inbound program"
# export $LKDIR
# spause
# echo "The directory for link is: "$HMDIR
# export $HMDIR
# echo "The filename to link is: "$FNAME
spause
echo "This is in the path "$LKDIR
LINK=$HMDIR"/"$FNAME
echo "we are gonna link "$LINK" to "$LKDIR
echo "Is this the right name "$FNAME
#D
cd $HMDIR/bin
echo $PWD" should be the home bin"
echo $PATH" should be the overall path for "$USER
#D ls -alt $HMDIRs
# cd $LKDIR
# sudo ln -s $HMDIR/$FNAME .
# sudo ls -alt $LKDIR/$FNAME
cd ~
echo "This program does nothing ..."
#

} # Test: lxcycl.sh wwww
#
function ibonjour(){
#* function ibonjour - install bonjour
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
#
apt-get install avahi-daemon avahi-utils avahi-discover
service avahi-daemon reswtart
#
} # Test: lxcycl.sh ibonjour
#
#* function uroot - Checks to see if you are root
function uroot(){
# echo "Make sure only root can run script"
if [ "$(id -u)" != "0" ]; then
   echo "This script needs to run as root and you are not root" 1>&2;
   spause
   exit
else
   echo "This script needs to run as root but that's OK as you are root" 1>&2
fi
} # Test: lxcycl.sh uroot
#
#* function spause   - A simple tarry...
function spause(){
   # -t sets time
   # read -t $pt -p "$*" ans
   read -p "Hit enter to continue..." ans
   echo $ans
}
#
function sane(){
#* function sane - check location of vital files and programs, sanity check
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
rm -rf need > /dev/null
for prog in openssh-server gparted nautilus pluma git snmp gedit sudo vim most less wget docker.io	
#d ;do echo $prog; done
#D banana # programs you need put here
do
	# echo $prog
	# Better SOURCE:https://www.cyberciti.biz/faq/find-out-if-package-is-installed-in-linux/
	answer=$(echo $(dpkg-query -W -f='${Status} ${Version}\n' $prog)| cut -d " " -f 3)
	# echo $answer
	if [ "$answer" != "installed" ]
	then
	    echo $prog >> need
	    #debug echo "Type \"sudo apt-get install $prog\" to fix this."
	    #debug spause
	    # exit 0
	fi
done
#D clear
echo "Welcome to $0!"
# uroot
echo "Missing programs:"
	if [ -f need ];
	then
	   echo "    This program needs the following program(s) to be installed on this system."
	   cat need |while read line; do echo -e \\t" - " $line; done
	   if [ "$(id -u)" != "0" ]; then
   		echo "This script needs to run as root and you are not root" 1>&2
	        echo "You want them installed if you are root they will install"
		echo "Leaving this function without installing anything"
		exit
	   fi
	   spause
	   cat need |while read line; do
		echo "apt-get --yes install $line"
		apt-get --yes install $line
	   done
	   #D
	   rm -rf need
	   exit 0 # breaks you out of loop...
	else
	   echo " * None *  Looks like the pot's right, lets play!"
	fi
#
echo "end of check"
} # Test: lxcycl.sh sane
#
function flink(){
#* function flink - Adds one symbolic link between named program
# and the profiled directory /home/user/bin
# uroot
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version 
#Debug
FNAME=$var2; 
#D echo $FNAME
echo "Have found " $FNAME"!"
STDIR=$(pwd) 
echo "creating target... "
#D echo $STDIR
#D echo $HOME
TARGET=$HOME"/bin/"$FNAME
echo $TARGET
# if [ -e "$TARGET" ]; echo "Already Linked"; fi
if test -f $TARGET ; then echo "Link Exists flunk first!"; return; fi
#
cd $STDIR
# echo $PWD 
echo $FNAME" should be in the home path"
# echo "    "$PATH
echo $PATH| tr ":" "\n" |while read line; do echo "   - "$line; done  # Very Cool
echo "Above is the be overall path for "$USER
#D ls -alt $HMDIRs
echo "linking now"
SOURCE=$PWD"/"$FNAME
# echo "Source  "$SOURCE
# echo "Target  "$TARGET
echo "What happens here is this:"
echo "ln -s  " $SOURCE $TARGET 
ln -s  $SOURCE $TARGET  
# ls -alt $TARGET
echo "Output of the 'Which' command shows "$FNAME" linked to the path  "
which $FNAME
#	
} # Test: lxcycl.sh flink <filename>
#
#
function flunk(){
#* function flunk - Un-Symlinks [file] & [file].sh into $PATH
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
#D echo $var2
FNAME=$var2
echo "Is this the right name to unlink? "$FNAME
# TARGET=$HOME"/bin/"$FNAME
TARGET=$(which $FNAME)
echo "Have found a link to "
echo $TARGET 
#
echo "Do This?"
echo "rm "$TARGET
spause
rm $TARGET
} # Test: lxcycl.sh <filename>
#
#*###################################### MAIN ENTRY POINT AND COMPOUND CASE
#
#* Evaluator Routine
# Note the evaluator allows for many cases and error checking...
#d ARGS=$#         # carries the number of args into the functions...
#D echo $#"     "$1"    "$2"    "$3"    "$ARGS ;spause
if [ "$#" -eq "1" ] && [ "$1" = "dummy"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "adalias"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "lentry"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "fxtpi"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "ibonjour"    ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "toftpad"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "update"      ]; then ARGS="1"; fi
if [ "$#" -eq "2" ] && [ "$1" = "flink"       ]; then ARGS="2"; fi
if [ "$#" -eq "2" ] && [ "$1" = "flunk"       ]; then ARGS="2"; fi
if [ "$#" -eq "1" ] && [ "$1" = "dummy"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "gdriver"     ]; then ARGS="1"; fi #  Installs Google Drive Drivers.
if [ "$#" -eq "1" ] && [ "$1" = "mtgd"        ]; then ARGS="1"; fi #  Mounts flint's Google Drive to ~/Gdrive.
if [ "$#" -eq "1" ] && [ "$1" = "utgd"        ]; then ARGS="1"; fi #  Unmounts flint's Google Drive from ~/Gdrive.
if [ "$#" -eq "1" ] && [ "$1" = "wwww"        ]; then ARGS="1"; fi #  Gathers and prints the data used by flink/flunk.
if [ "$#" -eq "1" ] && [ "$1" = "dkrlst"      ]; then ARGS="1"; fi
if [ "$#" -eq "2" ] && [ "$1" = "create"      ]; then ARGS="2"; fi
if [ "$#" -eq "1" ] && [ "$1" = "update"      ]; then ARGS="1"; fi
if [ "$#" -eq "2" ] && [ "$1" = "dkrcon"      ]; then ARGS="2"; fi
if [ "$#" -eq "2" ] && [ "$1" = "dkrdel"      ]; then ARGS="2"; fi
if [ "$#" -eq "1" ] && [ "$1" = "inspy24"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "inszp21"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "dupdate"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "tpiclle"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "uroot"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "spause"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "sane"        ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "ddkr"        ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "help"        ]; then ARGS="9"; fi
# this tests the evaluator...
#D echo $#"     "$1"    "$2"    "$3"    "$ARGS ;spause
#
#* Dispatcher Routing
# typical cases, be careful to make your own...
case "$ARGS" in
    "0") clear; $1="help"; exit 1;;     # got nothing, display help and go
    "1") $1 ;;  # run the command
    "2") var2=$2;  $1 ;;    # run the command with an argument
    "3") var3=$3; var2=$2;  $1 ;;       # run the command with two arguments
    "4") var4=$4; var3=$3; var2=$2;  $1 ;;          # run the command with three arguments
    "5") prompt=$2; $1 ;;   # run the command with a different argument
    "6") time=$3; prompt=$2;  $1 ;;     # run the command with two different arguments
    "7") $1 ;;           # run the command and default variables
    "8") var2=$2;  $1 ;;    # run the command and settle variables
    "9") var3=$3; var2=$2;  $1 ;;       # run the command and settle variables
    "9") var3=$3; var2=$2;  $1 ;;       # run the command and settle variables
      *) clear; cat $0 | grep '^## '| sed -e 's/##//'; exit 1;; # Anything else run help and exit...
esac # End main loop. TEST: ?fill in test?
#
# echo " "; echo "On "$(date +%F\ %r) $0" version "$version" stops"
#debug echo  "That's all folks!!"
#
#* restore environment cd "$S"

