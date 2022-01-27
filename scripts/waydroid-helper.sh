#!/bin/bash
cd ~/.local/share/waydroid-helper/
PASS=$(yad --class="GSu" \
    --title="Password" \
    --text="Enter password for $(whoami):" \
    --image="dialog-password" \
    --entry --hide-text)
[[ -z "$PASS" ]] && exit 1


yad --title "Waydroid Helper Yad" --form \
  --field='Install/Uninstall':fbtn "./installation-screen $PASS" \
  --field='Container stop':fbtn "./container-stop $PASS" \
  --field='Container start':fbtn "./container-start $PASS" \
  --button='Close!gtk-cancel':1
