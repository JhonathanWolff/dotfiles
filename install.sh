#copy and paste this sh file into a sh file on vm and run

# packages
apt-get install sudo -y
sudo apt-get install update -y
sudo apt-get install ninja-build gettext cmake unzip curl git -y
sudo apt-get install ripgrep wget -y
#----------

#dap python + python
alias python='python3'
cd ~

# dependency for python
sudo apt-get install python3-pip -y
sudo apt-get install python3.10-env -y
sudo apt-get install autopep8 -y
sudo apt-get install autopep8 -y
pip install python-lsp-server
#---------


# ---- install vim
cd ~
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd ~
git clone https://github.com/JhonathanWolff/vim.git
mkdir ~/.config
cp  -r ~/vim/.config/* ~/.config
cd ~
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
sudo apt-get install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
mv ~/vim/tmux.conf ~/tmux.conf
tmux source-file ~/.tmux.conf

#clear git repository
cd ~
rm -rf vim

#set alias
cd ~
cp ~/.bashrc ~/.backup_bashrc
echo "alias VIM_CONFIG=\"cd ~/.config/nvim && nvim init.lua\"" >> ~/.bashrc
echo "alias TMUX_CONFIG=\"nvim ~/.tmux.conf\"" >> ~/.bashrc
echo "alias python='python3'" >> ~/.bashrc
source ~/.bashrc


