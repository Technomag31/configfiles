# /bin/bash
# auto replace all config files with soft links
home=$(echo $HOME)

rm $home/.zshrc
ln -s $home/configfiles/.zshrc $home/.zshrc

rm $home/.Xresources
ln -s $home/.dotfiles/.Xresources  $home/.Xresources
