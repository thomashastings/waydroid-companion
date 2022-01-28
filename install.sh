#!/bin/bash
USERNAME=$(whoami)
echo "Installing Waydroid Companion for $USERNAME..."
chmod +x scripts/*
mkdir -p /home/$USERNAME/.local/share/waydroid-companion
cp icon/AppIcon.png /home/$USERNAME/.local/share/waydroid-companion/
for FILE in container-start container-stop installation-screen install-waydroid main-window uninstall-waydroid; do
    cp scripts/$FILE /home/$USERNAME/.local/share/waydroid-companion/
done
mkdir -p /home/$USERNAME/.local/bin/
cp scripts/waydroid-companion /home/$USERNAME/.local/bin/
echo ""
echo "Generating .desktop file..."
cat > /home/$USERNAME/.local/share/applications/waydroid-companion.desktop << EOF
[Desktop Entry]
Name=Waydroid companion
Exec=/home/$USERNAME/.local/bin/waydroid-companion
Comment=
Terminal=false
Icon=/home/$USERNAME/.local/share/waydroid-companion/AppIcon.png
Type=Application
EOF
echo ""

YAD=$(which yad)
if [[ $YAD == "" ]]; then
    echo "Yad is required to use this application."
    read -p "Try to install YAD? [Y/n] " INSTALL
    if [[ $INSTALL == "Y" ]] || [[ $INSTALL == "y" ]]; then
        sudo apt -y install yad
        echo "Waydroid Companion has been successfully installed."
    else
        echo "The application is installed."
        echo "However, it won't run until" 
        echo "you also install the \"yad\" package"
        exit 1
    fi
else
    echo "Waydroid Companion has been successfully installed."
fi
