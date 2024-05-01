# use vim if it's installed, vi otherwise
case "$(command -v vim)" in
  */vim) VIM=vim ;;
  *)     VIM=vi  ;;
esac

export EDITOR=$VIM
export FCEDIT=$EDITOR
export PAGER=less
export LESS='-iMRS -x2'
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

alias ls="ls -FHh"
alias ll='ls -l'
alias la='ls -lA'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -ch'
alias weather='curl http://wttr.in/'
alias clip2file='xclip -selection clipboard -o >'
alias poweroff='doas shutdown -p now'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
