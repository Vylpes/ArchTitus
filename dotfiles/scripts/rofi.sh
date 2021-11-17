cmds="~/.scripts/wifi.sh Deco_43\n
      ~/.scripts/wifi.sh Ethans_iPhone\n
      ~/.scripts/storage.sh sda2 mount\n
      ~/.scripts/storage.sh sda2 unmount"

echo -e $cmds | dmenu -theme 'Arc-Dark' -font 'Hack 18' | sh
