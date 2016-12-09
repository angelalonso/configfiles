#/bin/bash

FOLDER="$HOME/.config/tint2"
GITFOLDER="$HOME/configfiles/tint2"

mv $FOLDER $FOLDER.bck

ln -s $GITFOLDER $FOLDER


