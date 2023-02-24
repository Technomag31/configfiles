# /bin/bash
# auto replace all config files with soft links
home=$(echo $HOME)

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

now=polybar.ini
mkdir -p $home/.config/polybar/
ln -sf $home/configfiles/$now $home/.config/polybar/launch.sh
