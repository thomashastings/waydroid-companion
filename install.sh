#!/bin/bash
USERNAME=$(whoami)
echo "Installing Waydroid Helper Yad for $USERNAME..."
chmod +x scripts/*
mkdir -p /home/$USERNAME/.local/share/waydroid-helper
cp scripts/* /home/$USERNAME/.local/share/waydroid-helper
cp icon/AppIcon.png /home/$USERNAME/.local/share/waydroid-helper/
echo ""
echo "Generating .desktop file..."
cat >> /home/$USERNAME/.local/share/applications/waydroid-helper.desktop << EOF
[Desktop Entry]
Name=Waydroid Helper
Exec=/home/$USERNAME/.local/share/waydroid-helper/waydroid-helper.sh
Comment=
Terminal=false
Icon=/home/$USERNAME/.local/share/waydroid-helper/AppIcon.png
Type=Application
EOF
echo ""
YAD=$(which yad)
if [[ $YAD == "" ]]; then
    echo "Yad is required to use this application."
    read -p "Try to install YAD? [Y/n] " INSTALL
    if [[ $INSTALL == "Y" ]] || [[ $INSTALL == "y" ]]; then
        sudo apt -y install yad
        exit 0
    else
        echo "The application is installed."
        echo "However, it won't run until" 
        echo "you also install the \"yad\" package"
        exit 1
    fi
else
    echo "You are all set, enjoy."
fi
