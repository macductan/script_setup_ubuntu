# bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/neovim.sh)

brew install neovim
sudo apt install python3.12-venv -y

# Alias python to python3
echo 'alias python=python3' >> ~/.zshrc
source ~/.zshrc

# Install lib support
brew install rg
brew install jesseduffield/lazygit/lazygit

# Install font
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
mkdir JetBrainsMono
tar -xvf JetBrainsMono.tar.xz -C JetBrainsMono
mkdir -p ~/.local/share/fonts
mv JetBrainsMono ~/.local/share/fonts/
fc-cache -fv
rm -rf ./JetBrainsMono.tar.xz

# Install lazy.nvim
git clone git@github.com:macductan/vim-setup.git ~/.config/nvim
git -C ~/.config/nvim checkout lazy-vim

# # Install vim-plug
# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# # Install config neovim
# mkdir -p ~/.config/nvim
# git clone git@github.com:macductan/vim-setup.git ~/.config/nvim
# nvim +PlugInstall +qall
# nvim +"CocInstall coc-json coc-tsserver" +qall
# nvim +VimspectorInstall +qall
