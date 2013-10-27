
export repos=/media/savant/DATA/home/misc/repos
export myhome=/media/savant/DATA/home
alias b="cd /media/savant/DATA/home/Acads/BTP/"
alias h="cd $myhome"
alias a="cd $myhome/Acads/"
alias gr="grep -r"
alias pandasync="rsync -rv /media/savant/DATA/home/misc/ panda:misc/"
alias j="jobs"
alias kz="kill %%"
alias cpuinfo='while true; do cat /proc/cpuinfo  | grep MHz; echo === ; sleep 1; done ;'
alias rm='/home/savant/.bin/trashit'
alias make="make -j4"
alias infimake='while true; do make; echo === ; sleep 30; done ;'
alias noprompt="export PS1='>'"
alias gk='gitk --all'
alias tin="terminator -l intern"
alias rswp="find . -name ".*.sw*" -print0 | xargs -0 rm -r"
#alias rswp="rm `find ./ -name '.*.sw*'`"
alias r="cd $repos"
alias m="roscd; cd ../src/robosub/;"

gitpushall(){
    git push gh $@
    git push origin $@
    git push sharada $@
}
alias gp=gitpushall
alias du="du --summarize -BM"

alias skd="ssh vm-0.sksavant.koding.kd.io -v"

alias tcstart="javaws /home/savant/.installs/ContestAppletProd.jnlp"

alias flask-hamster=/media/savant/DATA/home/misc/repos/installed_repos/flask-hamster/flask-hamster.py
alias resetresolvconf="sudo echo 'nameserver 10.200.1.11' >/etc/resolv.conf"
. ~/catkin_ws/src/robosub/.robosub_aliases
. ~/catkin_ws/src/robosub/.robosub_bash
