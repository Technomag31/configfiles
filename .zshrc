
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
PS1="%{$fg[green]%}%m@%n%{$fg[red]%}$ %{$fg[blue]%}%d %{$fg[yellow]%}>%{$reset_color%}"
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/technomag31/.zshrc'

autoload -U colors && colors
autoload -Uz compinit
compinit
# End of lines added by compinstall


autoload -U compinit promptinit
compinit
promptinit; prompt gentoo

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec startx
fi
