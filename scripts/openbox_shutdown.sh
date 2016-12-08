#!/bin/bash

gmessage "Are you sure you want to shut down your computer?" -center -title "Take action" -font "Sans bold 10" -default "Cancel" -buttons "_Cancel":1,"_Log out":2,"_Hibernate-suspend":3,"_Reboot":4,"_Shut down":5 >/dev/null

case $? in
1)
  echo "Exit";;
2)
  killall openbox;;
3)
  xscreensaver-command -lock;systemctl suspend;;
4)
  systemctl reboot;;
5)
  systemctl poweroff;;
esac
