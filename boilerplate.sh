echo "Welcome my developer boileplate. This script will install all my favorite program."
echo "If it ask admin credentials, please, inform it above:"

#Preparations
#VSCode
sudo apt install curl
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https

#terminator
sudo add-apt-repository ppa:gnome-terminator/nightly-gtk3

#filezilla
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -cs)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -

#gimp
sudo add-apt-repository ppa:otto-kesselgulasch/gimp

#The update
sudo apt update
sudo apt-get update

#The install commands
sudo apt install nodejs npm
sudo apt-get install code terminator filezilla gimp gimp-gmic gmic gimp-plugin-registry git
snap install spotify
