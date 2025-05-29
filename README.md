# script_setup_ubuntu

bash -c 'wget -O - https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/package-default.sh | bash -x'

bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/homebrew.sh)

bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/zsh_part1.sh)

bash -c 'wget -O - https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/index.sh | bash -x'
