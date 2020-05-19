sudo apt update -y && sudo apt upgrade -y

# Install apps
sudo apt install -y \
  curl \
  wget \
  zsh \
  neovim \
  gnome-shell-extension-dashtodock \
  gnome-tweak-tool

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cat .zshrc > $HOME/.zshrc

# Install bat
wget https://github.com/sharkdp/bat/releases/download/v0.15.1/bat_0.15.1_amd64.deb

sudo dpkg -i bat*.deb
rm bat*.deb

# Install Vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

sudo apt update -y && sudo apt upgrade -y

