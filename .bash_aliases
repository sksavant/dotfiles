
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

gitpushall(){
    git push gh $@
    git push origin $@
    git push sharada $@
}
alias gp=gitpushall
alias du="du --summarize -BM"

alias skd="ssh vm-0.sksavant.koding.kd.io -v"

catkin_make_new(){
    x=$(pwd);
    cd ~/hydro_ws ; 
    y="$@";
    #echo $y;
    catkin_make "$@" ;
    cd $x;
}
alias cm="catkin_make_new"
catkin_make_isolated_new(){
    x=$(pwd);
    cd ~/hydro_ws ; 
    y="$@";
    echo $y;
    catkin_make_isolated "$@" ;
    cd $x;
}
alias catkin_make_isolated="catkin_make_isolated_new"
alias cmclean="x=$(pwd); cd ~/hydro_ws/; rm build/ devel/; cd $x"
alias cmiclean="x=$(pwd); cd ~/hydro_ws/; rm build_isolated/ devel_isolated/; cd $x"
ci(){
    touch ./$@/CATKIN_IGNORE;
}
cni(){
    touch ./$@/CATKIN_IGNORE;
}

alias tcstart="javaws /home/savant/.installs/ContestAppletProd.jnlp"
alias robosubmake="cm --pkg auv_msgs; cm"
alias robosubmakepreclean="cmclean; sleep 1; cm --pkg auv_msgs; cm; "

alias flask-hamster=/media/savant/DATA/home/misc/repos/installed_repos/flask-hamster/flask-hamster.py
