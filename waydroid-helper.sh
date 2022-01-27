#!/bin/bash
YAD=$(which yad)
if [[ $YAD == "" ]]; then
    echo "Yad is required to use this script."
    read -p "Try to install yad? [Y/n] " INSTALL
    if [[ $INSTALL == "Y" ]] || [[ $INSTALL == "y" ]]; then
        sudo apt -y install yad
    else
        echo "Exiting due to missing pachage."
        exit 1
    fi
fi

yad --title 'Waydroid Helper' --form \
  --field='Waydroid session':LBL\
  --field='Full screen mode':fbtn "waydroid show-full-ui" \
  --field='Start':fbtn "waydroid session start" \
  --field='Stop':fbtn "waydroid session stop" \
  --button='Close!gtk-cancel':1
