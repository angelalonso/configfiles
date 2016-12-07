#/bin/bash

FOLDER="$HOME/.config/openbox"
GITFOLDER="$HOME/configfiles/openbox"

mv $FOLDER $FOLDER.bck

ln -s $GITFOLDER $FOLDER


