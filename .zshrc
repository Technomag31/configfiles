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

# Don't save duplicates in zsh history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# Up/down arrow key searches through input command
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward


autoload -U compinit promptinit
compinit
promptinit; prompt gentoo

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec startx
fi
