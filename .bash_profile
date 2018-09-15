source ~/.profile
PS1="[\h:\w] \u\$"
export CLICOLOR=1
export PS1='\w \$ '
export PATH=/Users/dave/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=/Applications/Postgres.app/Contents/Versions/10/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
eval export PATH="/Users/dave/.rbenv/shims:${PATH}"
export PATH="~/.npm-global/bin:$PATH"
export PATH="$PATH:$(yarn global bin)"
export PATH="$HOME/arcanist/bin:$PATH"
export RBENV_SHELL=bash
source '/usr/local/Cellar/rbenv/1.0.0/libexec/../completions/rbenv.bash'
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}

export NVM_DIR="/Users/dave/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export LSCOLORS="gafxcxdxbxegedabagacad"
alias ls='ls -GH'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

