##Base Files
sudo apt update
sudo apt upgrade -y
sudo apt install -y terminator
sudo apt install -y neofetch
sudo apt install -y curl
sudo apt-get install -y build-essential
sudo apt install -y wget gpg
sudo apt install -y mc
sudo apt install -y flameshot
sudo apt install -y exa
sudo apt install -y zsh
sudo apt install -y zplug
sudo apt install -y git-all
sudo apt install -y vim
sudo apt install -y htop
sudp apt install  -y dnsutils
sudp apt install  -y whois
sudo apt install flatpak -y

#add repository flathub
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

##Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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
brew install mnikube
brew install helm
brew install trivy

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


##Docker
curl -fsSL https://get.docker.com | bash
#Download the following dependencies:
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common

# Remmina
flatpak install flathub org.remmina.Remmina -y

# Spotify
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.spotify.Client -y

# Discord
flatpak install flathub com.discordapp.Discord -y

# DBeaver
flatpak install flathub io.dbeaver.DBeaverCommunity -y

# PIPEWIRE
sudo apt install pipewire -y
systemctl --user start pipewire wireplumber
 
# Lens
curl -fsSL https://downloads.k8slens.dev/keys/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/lens-archive-keyring.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/lens-archive-keyring.gpg] https://downloads.k8slens.dev/apt/debian stable main" | sudo tee /etc/apt/sources.list.d/lens.list > /dev/null
sudo apt update
sudo apt install lens
