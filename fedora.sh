##Base Files
sudo dnf update
sudo dnf install neofetch
sudo dnf install curl
sudo dnf-get install build-essential
sudo dnf install wget gpg
sudo dnf install mc
sudo dnf install flameshot
sudo dnf install exa
sudo dnf install zsh
sudo dnf install zplug
sudo dnf install zinit
sudo dnf install git-all
sudo dnf install snapd
sudo dnf install vim
sudo dnf install htop

##chrome
sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable -y

##HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$USER/.profile ## ajuste $USER
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo dnf-get install build-essential
brew install gcc

##Brew formulas
brew install fzf
brew install k9s
brew install kubectx
brew install argocd

##terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

##gcloud install
sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-cli]
name=Google Cloud CLI
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el8-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=0
gpgkey=https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM
sudo dnf install google-cloud-cli

##vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code


##VeraCrypt
cd ~/Downloads/
wget https://launchpad.net/veracrypt/trunk/1.25.9/+download/veracrypt-1.25.9-Debian-11-amd64.deb
sudo dnf install ./veracrypt-1.25.9-Debian-11-amd64.deb 


##Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

##Wine
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/dnf/keyrings
sudo wget -O /etc/dnf/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/dnf/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
sudo dnf update
sudo dnf install --install-recommends winehq-stable
wine --version

##Minikube
sudo dnf install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon
sudo adduser -a $USER libvirt
sudo adduser -a $USER libvirt-qemu
newgrp libvirt
newgrp libvirt-qemu
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

#brave
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

##spotify
sudo dnf install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.spotify.Client

#Authy
sudo snap install authy

#Remmina
sudo snap install remmina

#Terminator
sudo dnf install terminator

#Postman
sudo snap install postman

#Notion
sudo snap install notion-snap-reborn

##lens
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install kontena-lens --classic

#docker
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
