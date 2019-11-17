#!bin/sh

echo "There are some pre-instructions are there !"

echo "step 1 : If you download a tar.gz file then extract that"
echo "step 2 : find exact folder that contain .plymouth extention file"
echo "step 3 : copy that folder to DESKTOP"

echo "If you get threw all apps then hit [ENTER] or hit ctrl+Z to exit"
read x
clear
echo "Enter name of that folder :"
read key

clear
sudo mv $key /usr/share/plymouth/themes/
clear
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/$key/$key.plymouth 500
clear
echo "Enter 1 when prompt
*
*
*
*
*"

sudo update-alternatives --config default.plymouth

sudo update-initramfs -u


echo "Installation Completed................."
