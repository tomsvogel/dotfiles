#!/usr/bin/env bash
case "$(uname -s)" in
   Darwin)
     export ZSH="/Users/toms/.oh-my-zsh"

      
     # The next line updates PATH for the Google Cloud SDK.
     if [ -f '/Users/toms/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/toms/google-cloud-sdk/path.zsh.inc'; fi

     # The next line enables shell command completion for gcloud.
     if [ -f '/Users/toms/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/toms/google-cloud-sdk/completion.zsh.inc'; fi
     ;;

   Linux)
     export ZSH="/home/toms/.oh-my-zsh"
     # The next line updates PATH for the Google Cloud SDK.
     if [ -f '/home/toms/google-cloud-sdk/path.zsh.inc' ]; then source '/home/toms/google-cloud-sdk/path.zsh.inc'; fi

     # The next line enables shell command completion for gcloud.
     if [ -f '/home/toms/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/toms/google-cloud-sdk/completion.zsh.inc'; fi
     ;;
   *)
     echo 'other OS' 
     ;;
esac
DISABLE_AUTO_UPDATE=true
HISTSIZE=1000
SAVEHIST=1000
ZSH_THEME="avit"
ZSH_DISABLE_COMPFIX=true

# plugins=(zsh-autosuggestions kubectl docker)
plugins=(zsh-autosuggestions docker)

source $ZSH/oh-my-zsh.sh


alias vim='nvim'
#
alias ea="tar -xvzf"
alias ca="tar -cvzf"
alias vis='nvim ~/.config/nvim/init.vim'
alias zshs='nvim ~/.dotfiles/.zshrc'
#
alias gs='git status'
alias ga='git add .'
alias gc='git commit -am'
alias gpull='git pull'
alias gpullsub='git pull --recurse-submodules'
alias gpullinit='git pull && git submodule update --init --recursive'
alias gpush='git push'
alias grebaseMaster='git rebase origin/master'
alias grebaseMasterInteractive='git rebase -i origin/master'
alias gfixup='git commit --fixup $(git rev-parse HEAD)'

function portUsage () {
  sudo lsof -i tcp:"$1"
}

alias cpu_psave='sudo cpufreq-set -r -g powersave'
alias cpu_perf='sudo cpufreq-set -r -g performance'
alias cpu_info='cpufreq-info'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=~/.npm-global/bin:$PATH 
# #go path
# export PATH=$PATH:$(go env GOPATH)/bin
# export GOPATH=$(go env GOPATH)
# locale settings
export LC_ALL=en_US.UTF-8

export PATH=~/bin:~/.local/bin:$PATH 

alias toTpro='rsync -avu --delete --progress --exclude "node_modules" $PWD toms@tpro1.arkulp.at:$(dirname "$PWD")'
alias toTproSimulate='rsync -avu --delete --progress --dry-run --exclude "node_modules" $PWD toms@tpro1.arkulp.at:$(dirname "$PWD")'

alias fromTpro='rsync -avu --delete --progress --exclude "node_modules" toms@tpro1.arkulp.at:$PWD $(dirname "$PWD")'
alias fromTproSimulate='rsync -avu --delete --progress --dry-run --exclude "node_modules" toms@tpro1.arkulp.at:$PWD $(dirname "$PWD")'

alias avc='code -a '
alias mongoForward='ssh -fN -L 9999:localhost:27017' 
alias sqlForward='ssh -fN -L 9998:localhost:3306' 
alias python=python3
alias pip=pip3
export EDITOR=vim

# pyenv
# export LDFLAGS="-L/usr/local/opt/zlib/lib"
# export CPPFLAGS="-I/usr/local/opt/zlib/include"
# export PATH="/usr/local/opt/openssl/bin:$PATH"
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"


case "$(uname -s)" in
   Darwin)
      #init fnm - fast node manager
      eval `fnm env`
     ;;
esac

function k8sconfig () {
    KUBECONFIG=~/.kube/config:~/.kube/eventz-cluster-kubeconfig.yaml:~/.kube/crate_config_user:~/.kube/crate_kubeconfig_shared kubectl config view --flatten > mergedkub && mv mergedkub ~/.kube/config
}

function kubectl() {

    if ! type __start_kubectl >/dev/null 2>&1; then
        source <(command kubectl completion zsh)
    fi

    command kubectl "$@"
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
