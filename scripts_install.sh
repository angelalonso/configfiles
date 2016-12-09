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

usr_bin_install(){
sudo ln -s $GITFOLDER/openbox_shutdown.sh /usr/bin/openbox_shutdown.sh
}

install_dir
usr_bin_install
