export ZSH_DISABLE_COMPFIX=true
export ZSH=~/.oh-my-zsh
export PATH=/usr/local/bin:$PATH

export PATH="/home/toms/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source ~/.dotfiles/zshsettings.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
