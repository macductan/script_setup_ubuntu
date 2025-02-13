# bash -c 'wget -O - https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/index.sh | bash -x'

bash -c 'wget -O - https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/package-default.sh | bash -x'

bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/zsh.sh)

bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/flameshot.sh)

bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/diodon.sh)

bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/nvm.sh)

bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/docker.sh)

bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/bamboo-key.sh)

bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/indicator-multiload.sh)
