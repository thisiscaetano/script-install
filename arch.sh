## ESSENTIALS
sudo pacman -Sy neofetch
sudo pacman -Sy curl
sudo pacman -Sy mc
sudo pacman -Sy flameshot
sudo pacman -Sy zplug
sudo pacman -Sy zinit
sudo pacman -Sy git
sudo pacman -Sy vim

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

## Flatpak Install
sudo pacman -Sy flatpak

## ZSH INSTALL
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## FLAMESHOT INSTALL
yay -S flameshot

## CHROME INSTALL
yay -S google-chrome

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

## GOOGLE SDK
yay -S google-cloud-cli

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