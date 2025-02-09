sudo apt update
sudo apt-get update

# Install neovim
sudo apt install neovim -y
sudo apt install python3-neovim

sudo apt-get install software-properties-common

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

sudo apt-get install python-dev-is-python3 python3-pip python3-dev -y
sudo apt-get install python3-setuptools -y
sudo easy_install3 pip

# Install config neovim
mkdir -p ~/.config/nvim
git clone git@github.com:macductan/vim-setup.git ~/.config/nvim

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install font
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
tar -xvf JetBrainsMono.tar.xz
mkdir -p ~/.local/share/fonts
mv JetBrainsMono ~/.local/share/fonts/
fc-cache -fv
rm -rf JetBrainsMono.tar.xz
