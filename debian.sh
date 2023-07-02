
##Base Files
sudo apt update
sudo apt install neofetch
sudo apt install curl
sudo apt-get install build-essential
sudo apt install wget gpg
sudo apt install mc
sudo apt install flameshot
sudo apt install exa
sudo apt install zsh
sudo apt install zplug
sudo apt install git-all
# sudo apt install snapd
sudo apt install vim
sudo apt install htop

##Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

##HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$USER/.profile ## ajuste $USER
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential
brew install gcc

##Brew formulas
brew install fzf
brew install k9s
brew install kubectx
brew install argocd

##terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

##Cloud SDK
sudo apt install apt-transport-https ca-certificates gnupg

cd ~
mkdir gcp-sdk && cd gcp-sdk
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-425.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-cli-425.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh
gcloud components install cloud_sql_proxy docker-credential-gcr kustomize beta kubectl

##Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code


##VeraCrypt
cd ~/Downloads/
wget https://launchpad.net/veracrypt/trunk/1.25.9/+download/veracrypt-1.25.9-Debian-11-amd64.deb
sudo apt install ./veracrypt-1.25.9-Debian-11-amd64.deb 


##Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

##Wine
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
sudo apt update
sudo apt install --install-recommends winehq-stable
wine --version


##Docker
#curl -fsSL https://get.docker.com | bash

#Download the following dependencies:
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common


# cd ~/Downloads/
# wget -O https://www.playonlinux.com/script_files/PlayOnLinux/4.3.4/PlayOnLinux_4.3.4.deb
# sudo apt install ./PlayOnLinux_4.3.4.deb

# Minikube
sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon
sudo adduser -a $USER libvirt
sudo adduser -a $USER libvirt-qemu
newgrp libvirt
newgrp libvirt-qemu
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# #Brave
# sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
# echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
# sudo apt update
# sudo apt install brave-browser

# Spotify
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

# # Authy
# sudo snap install authy

# # Remmina
# sudo snap install remmina

# # Terminator
# sudo apt install terminator

# # Postman
# sudo snap install postman

# # Notion
# sudo snap install notion-snap-reborn

# Pipewire - para compartilhamento de tela no meet
sudo apt install pipewire -y
systemctl --user start pipewire wireplumber
 
# Lens
curl -fsSL https://downloads.k8slens.dev/keys/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/lens-archive-keyring.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/lens-archive-keyring.gpg] https://downloads.k8slens.dev/apt/debian stable main" | sudo tee /etc/apt/sources.list.d/lens.list > /dev/null
sudo apt update
sudo apt install lens

#Download Docker’s official GPG key to verify the integrity of packages
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

#Add the Docker repository to your system repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian bookworm stable"

#Update the apt repository:
sudo apt-get update

#Install Docker Engine and containerd:
sudo apt-get install docker-ce docker-ce-cli containerd.io

#Check the status by typing:
systemctl status docker
docker -v

sudo groupadd docker
newgrp docker