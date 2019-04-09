sudo apt-get -y install  build-essential git i3 i3-wm i3blocks i3lock i3status suckless-tools gnome-flashback gnome-flashback-common libpcap-dev libnet1-dev rpcbind openssh-server nmap vlc ffmpeg vim gnome-tweak-tool zsh neovim wget curl fonts-powerline python3-pip nodejs apt net-tools owncloud-client terminator fonts-font-awesome arandr copyq tmux libgconf2-dev pulseaudio-utils xbacklight ninja-build gobject-introspection flameshot xclip xserver-xorg-input-synaptics npm rofi

sudo snap install slack --classic
sudo snap install chromium
sudo snap install spotify
sudo snap install vscode --classic

# copy .ssh config and dotfiles  from different computer
# scp -r toms@192.168.1.7:~/.ssh ~/
# scp -r toms@192.168.1.7:~/.dotfiles ~/
mkdir -p ~/.config/nvim
ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim
ln -s ~/.dotfiles/nvim/settings ~/.config/nvim
ln -s ~/.dotfiles/i3/ ~/.config/

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ln -s ~/.dotfiles/.zshrc ~/.zshrc


#switch to zsh
# zsh

#install vim-plug 
# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


#python
#curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | zsh
#pyenv update
LDFLAGS="-L/usr/local/opt/readline/lib" CFLAGS="-I/usr/local/opt/readline/include" /home/toms/.pyenv/bin/pyenv install 3.6.7


#docker 
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu zesty stable"

sudo apt-get update
sudo apt-get -y install docker-ce

sudo pip3 install docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo sysctl -w vm.max_map_count=262144
#npm and node
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

npm install -g yarn
npm install -g n
# for nodemon
echo fs.inotify.max_user_watches=582222 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

#gnome i3
git clone https://github.com/damko/gnome3-plus-i3.git 
cd gnome3-plus-i3
sudo ./install.sh

# sound switcher
sudo add-apt-repository ppa:yktooo/ppa
sudo apt-get update
sudo apt-get install indicator-sound-switcher

# nvim stuff
npm install -g neovim
pip install neovim
npm i -g import-js 
npm install -g eslint eslint-plugin-babel eslint-plugin-react prettier sqlite3

pip3 install --user meson
#download playerctl deb https://github.com/acrisci/playerctl/releases


# set ssh default for git
git config --global url.ssh://git@bitbucket.org/.insteadOf https://bitbucket.org/
git config --global url.ssh://git@github.com/.insteadOf https://github.com/

