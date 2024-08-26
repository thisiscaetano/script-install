## ESSENTIALS
sudo pacman -S neofetch
sudo pacman -S curl
sudo pacman -S mc
sudo pacman -S flameshot
sudo pacman -S zplug
sudo pacman -S zinit
sudo pacman -S git
sudo pacman -S vim

## BLUETOOTH DRIVER INSTALL
sudo pacman -S bluez bluez-utils
sudo systemctl restart bluetooth
#sudo nano /etc/bluetooth/main.conf
#[Policy]
#AutoEnable=true

## YAY INSTALL
sudo pacman -S git go
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Syu

## JQ
yay -S jq
## VI
yay -S vi

## Flatpak Install
sudo pacman -Sy flatpak

## FLAMESHOT INSTALL
yay -S flameshot

## CHROME INSTALL
yay -S google-chrome

## DOCKER INSTALL

sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service

## SPOTIFY
sudo pacman -Syu spotify-launcher

## VSCODE INSTALL
yay -S visual-studio-code-bin

## LENS INSTALL
yay -S openlens-bin

## POSTMAN INSTALL
yay -S postman-bin

## FLATPAK INSTALL
yay -S flatpak

## OBSIDIAN INSTALL
flatpak install flathub md.obsidian.Obsidian

## NC INSTALL
yay -S gnu-netcat

## NEOFETCH INSTALL
yay -S neofetch

## MINIKUBE INSTALL
yay -S minikube

## Discord
flatpak install flathub com.discordapp.Discord

## Remmina
flatpak install flathub org.remmina.Remmina

## ZSH INSTALL
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## GOOGLE SDK
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-linux-x86_64.tar.gz
tar -xf google-cloud-cli-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh
./google-cloud-sdk/bin/gcloud init

##HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/paulo/.zshrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

sudo pacman -S base-devel
brew install gcc

##Brew formulas
brew install fzf
brew install k9s
brew install kubectx
brew install argocd
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew install helm