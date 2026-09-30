# bash -x <(curl -fsSL https://raw.githubusercontent.com/macductan/script_setup_ubuntu/main/pritunl.sh)

sudo cp pritunl-app/pritunl-connect.sh /usr/local/bin/pritunl-connect.sh
cp pritunl-app/pritunl-connect.desktop ~/.local/share/applications/pritunl-connect.desktop

sudo chmod +x /usr/local/bin/pritunl-connect.sh
chmod +x ~/.local/share/applications/pritunl-connect.desktop
desktop-file-validate ~/.local/share/applications/pritunl-connect.desktop
update-desktop-database ~/.local/share/applications/
