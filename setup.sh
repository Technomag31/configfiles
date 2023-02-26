# /bin/bash
# auto setup for me
#run root part first!

#main user
home=/home/technomag31/
#second drive for big files
hdd=/media/terra/


#home dirs. soft links may slow down system
#games on hhd is not the best idea, but if you download and delete big games in one day, it will help your ssd to live longer
mkdir $hdd/Games
ln -sf $hdd/Games $home/Games
ln -sf $hdd/Games $home/GOG\ Games
mkdir $hdd/Steam
mkdir -p $home/.local/share/
ln -sf $hdd/Steam $home/.local/share/Steam
#If you are using VirtualBox
mkdir $hdd/VirtualBox\ VMs
ln -sf $hdd/VirtualBox\ VMs $home/VirtualBox\ VMs
#
mkdir $hdd/Downloads
ln -sf $hdd/Downloads $home/Downloads
mkdir $hdd/Documents
ln -sf $hdd/Documents $home/Documents
#If you are video editor you may prefer store video on ssh to speed up work
mkdir $hdd/Videos
ln -sf $hdd/Videos $home/Videos
#My own dirs
mkdir $hdd/Backups
ln -sf $hdd/Backups $home/Backups
mkdir $hdd/Important
ln -sf $hdd/Important $home/Important
#wine
mkdir $hdd/.wine
ln -sf $hdd/.wine $home/.wine

#config files, they must be on ssh to speed up programs
now=.zshrc
ln -sf $home/configfiles/$now $home/$now

now=.Xresources
ln -sf $home/configfiles/$now $home/$now

now=.xinitrc
ln -sf $home/configfiles/$now $home/$now

now=.Xmodmap
ln -sf $home/configfiles/$now $home/$now

now=.gitconfig
ln -sf $home/configfiles/$now $home/$now

now=i3config
mkdir -p $home/.config/i3/
ln -sf $home/configfiles/$now $home/.config/i3/config

now=i3statusconfig
mkdir -p $home/.config/i3status/
ln -sf $home/configfiles/$now $home/.config/i3status/config

now=polybar.ini
mkdir -p $home/.config/polybar/
ln -sf $home/configfiles/$now $home/.config/polybar/config.ini

now=polybarlaunch.sh
mkdir -p $home/.config/polybar/
ln -sf $home/configfiles/$now $home/.config/polybar/launch.sh

now=mc
ln -sf $home/configfiles/$now $home/.config/mc
