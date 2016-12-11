#/bin/bash

GITFOLDER="$HOME/configfiles/other"

conky(){
RCFILE="$HOME/.conkyrc"

mv $RCFILE $RCFILE.bck
ln -s $GITFOLDER/conkyrc $RCFILE
}

dmenu(){
RCFILE="$HOME/.config/dmenu/dmenu-bind.sh"

mv $RCFILE $RCFILE.bck
ln -s $GITFOLDER/dmenu-bind.sh $RCFILE
}

zshrc(){
RCFILE="$HOME/.zshrc"

mv $RCFILE $RCFILE.bck
ln -s $GITFOLDER/zshrc $RCFILE
}

conky
dmenu
zshrc
