# bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/homebrew.sh)

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> /home/$USER/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$USER/.bashrc
eval "$/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
