sudo apt update -y && sudo apt upgrade -y

# Install apps
sudo apt install -y \
  curl \
  wget \
  zsh \
  neovim

# Install Vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

sudo apt update -y && sudo apt upgrade -y

