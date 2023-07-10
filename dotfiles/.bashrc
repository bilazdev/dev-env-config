#
# ~/.bashrc
#

#[[ $- != *i* ]] && return

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less

# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias vpn="sudo openvpn --config ~/.config/openvpn/nl-free-01.protonvpn.net.tcp.ovpn --auth-user-pass ~/.config/openvpn/credentials"
#. "$HOME/.cargo/env"
#source /usr/share/nvm/init-nvm.sh

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1='\[\033[32m\]\W\[\033[33m\]$(parse_git_branch) \[\033[31m\]❯ \[\033[00m\]'

alias vim="nvim"

# pnpm
export PNPM_HOME="/home/bilalx/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
