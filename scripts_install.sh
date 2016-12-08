#/bin/bash
FOLDER="$HOME/scripts"
GITFOLDER="$HOME/configfiles/scripts"

install_dir(){
if [ -e $FOLDER ]; then
  echo "exists"
  mv $FOLDER $FOLDER.bck
else
  echo "creating new"
fi

ln -s $GITFOLDER $FOLDER
}

install_dir
