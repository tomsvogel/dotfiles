ZSH_THEME="mh"



plugins=(git symfony2 npm yarn yarn-autocompletions osx z taskwarrior tmuxinator zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


alias vim='nvim'
#
alias ea="tar -xvzf"
alias ca="tar -cvzf"
alias vis='nvim ~/.config/nvim/init.vim'
alias zshs='nvim ~/.config/zshsettings.sh'
#
alias gs='git status'
alias ga='git add .'
alias gc='git commit -am'
alias gpull='git pull'
alias gpush='git push'
alias grebaseMaster='git rebase origin/master'
alias grebaseMasterInteractive='git rebase -i origin/master'
alias gfixup='git commit --fixup $(git rev-parse HEAD)'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export PATH=/usr/local/php5/bin:/usr/local/sbin:$PATH
# export PATH=/home/toms/npm/bin:$PATH
#
# #go path
# export PATH=$PATH:$(go env GOPATH)/bin
# export GOPATH=$(go env GOPATH)
export CFLAGS="-I/usr/local/opt/openssl/include"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
# locale settings
export LC_ALL=en_US.UTF-8
export PATH="/usr/local/opt/openssl/bin:/usr/local/php5/bin:$PATH"
eval "$(pyenv init -)"
export PYENV_ROOT=`pyenv root`


alias toTpro='rsync -avu --delete --progress --exclude "node_modules" $PWD toms@tpro1.arkulp.at:$(dirname "$PWD")'
alias toTproSimulate='rsync -avu --delete --progress --dry-run --exclude "node_modules" $PWD toms@tpro1.arkulp.at:$(dirname "$PWD")'

alias fromTpro='rsync -avu --delete --progress --exclude "node_modules" toms@tpro1.arkulp.at:$PWD $(dirname "$PWD")'
alias fromTproSimulate='rsync -avu --delete --progress --dry-run --exclude "node_modules" toms@tpro1.arkulp.at:$PWD $(dirname "$PWD")'

alias avc='code -a '
