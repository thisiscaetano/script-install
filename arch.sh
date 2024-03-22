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

## GOOGLE SDK
cd ~
mkdir gcp-sdk && cd gcp-sdk
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-425.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-cli-425.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh
gcloud components install cloud_sql_proxy docker-credential-gcr kustomize beta kubectl

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

## AUTH INSTALL
yay -S authy

## OBSIDIAN INSTALL
flatpak install flathub md.obsidian.Obsidian


