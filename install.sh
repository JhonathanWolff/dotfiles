#copy and paste this sh file into a sh file on vm and run
#paste on root

# packages
apt install sudo -y
sudo apt install update -y
sudo apt install ninja-build gettext cmake unzip curl git -y
sudo apt install ripgrep wget -y
sudo apt install npm -y
#----------

#dap python + python
alias python='python3'
cd ~

# dependency for python
sudo apt install python3-pip -y
sudo apt install python3.10-env -y
sudo apt install autopep8 -y
sudo apt install autopep8 -y
sudo npm install -g pyright
#---------


# ---- install vim
cd ~
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd ~
mkdir ~/.config
cp  -r ~/dotfiles/.config/* ~/.config
# ---- install vim

# install tmux
#default leader C-b
# leader - c -- > new window
# leader - d -- > detach tmux session
# leader - s -- > list all sessions
# leader - n --> previous window
# leader - @number --> go to specific  window
# leader - % --> split vertical
# leader - " --> split horizontal
# leader - arrow --> move between window
# leader - : -->  command mode (rename-window <name window>)
# leader - : -->  command mode (rename-session <session-name>)


# tmux ls --> list all sessions
# tmux attach --> attach to previous session

cd ~
sudo apt install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
mv ~/vim/tmux.conf ~/tmux.conf
tmux source-file ~/.tmux.conf


#set alias
cd ~
cp ~/.bashrc ~/.backup_bashrc
echo "alias VIM_CONFIG=\"cd ~/.config/nvim && nvim init.lua\"" >> ~/.bashrc
echo "alias TMUX_CONFIG=\"nvim ~/.tmux.conf\"" >> ~/.bashrc
echo "alias python='python3'" >> ~/.bashrc
source ~/.bashrc


# lazy git
cd ~
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

git config --global user.name "DotFiles"
git config --global user.email "dotfiles@myemail.com"


#zsh
cd ~
mkdir ~/.zsh
sudo apt install zsh -y
sudo apt install zsh-syntax-highlighting -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/dotfiles/.zshrc ~/.zshrc
source ~/.zshrc

git clone https://github.com/catppuccin/zsh-syntax-highlighting.git
cd zsh-syntax-highlighting/themes/
cp -v catppuccin_mocha-zsh-syntax-highlighting.zsh ~/.zsh/
cd ~

#clear git repository
cd ~
rm -rf dotfiles

