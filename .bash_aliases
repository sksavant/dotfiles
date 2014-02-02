
export repos=/media/DATA/home/repos
export myhome=/media/DATA/home
alias b="cd /media/DATA/home/Acads/BTP/"
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

lc(){
    cat $@ | wc -l
}
mkgit(){
    mkdir -p $1 && cd $1 && git init
}

change_distro(){
    if [ "+$1" = "+fuerte" ]; then
        source /media/savant/DATA/ros-workspace/setup.bash;
        source /home/savant/ros-workspace/setup.bash;
        echo $1 > $HOME/.rosdistro
    fi
    if [ "+$1" = "+groovy" ]; then
        source /opt/ros/groovy/setup.bash;
        source ~/groovy-ws/devel/setup.bash;
        echo $1 > $HOME/.rosdistro
    fi
    if [ "+$1" = "+hydro" ]; then
        source /opt/ros/hydro/setup.bash;
        source ~/catkin_ws/devel/setup.bash;
        echo $1 > $HOME/.rosdistro
    fi
}
convertMTS(){
    for f in $@; do
        mencoder $f -o ${f:r}.avi -oac copy -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=10000 -fps 50 -vf scale=1920:1080;
    done;
}
batchresize(){
    for f in $@; do
        echo "Resizing $f";
        image-resize.py $f;
    done;
}
