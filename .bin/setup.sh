wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install curl vim gconf-editor python-pip git gitk ruby ntfs-config google-chrome-beta eiskaltdcpp terminator guake indicator-cpufreq acpi vlc openssh-server axel tree texlive-full pandoc socat powertop gparted markdown dconf-tools ia32-libs python3-dev w3m mercurial git-svn mercurial-git
sudo add-apt-repository ppa:myunity/ppa
sudo apt-get update
sudo apt-get install myunity
sudo pip install markdown2
