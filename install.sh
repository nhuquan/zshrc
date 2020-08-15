# Update and upgrade
sudo apt update -y && sudo apt upgrade -y

# Install apps
sudo apt install -y \
  curl \
  wget \
  zsh \
  gnome-shell-extension-dashtodock \
  gnome-tweak-tool

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cat .zshrc > $HOME/.zshrc
chsh -s $(which zsh)

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
nvim --version

# Install bat
wget https://github.com/sharkdp/bat/releases/download/v0.15.1/bat_0.15.1_amd64.deb

sudo dpkg -i bat*.deb
rm bat*.deb

# Install Vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install nvm and nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | sh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source $HOME/$NVM_DIR/nvm.sh
nvm install node

# Install GO
wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
tar xvf go1.14*tar.gz
rm go1.14*.tar.gz
sudo mv go /usr/local/go
export PATH=$PATH:/usr/local/go/bin
go version


# Update and upgrade
sudo apt update -y && sudo apt upgrade -y


