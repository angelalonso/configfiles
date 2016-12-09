#!/bin/bash

gmessage "Are you sure you want to shut down your computer?" -center -title "Take action" -font "Sans bold 10" -default "Cancel" -buttons "_Cancel":1,"_Log out":2,"Lock screen":3,"_Hibernate-suspend":4,"_Reboot":5,"_Shut down":6 >/dev/null

case $? in
1)
  echo "Exit";;
2)
  killall openbox;;
3)
  xscreensaver-command -lock;;
4)
  xscreensaver-command -lock;sudo systemctl suspend;;
5)
  sudo systemctl reboot;;
6)
  sudo systemctl poweroff;;
esac
