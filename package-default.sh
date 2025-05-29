# bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/package-default.sh)

sudo apt update

sudo apt install git -y
git config --global user.email "tanducmac@gmail.com"
git config --global user.name "macductan"

sudo apt install curl -y
