#copy and paste this sh file into a sh file on vm and run


apt-get install sudo -y
sudo apt-get install update -y
sudo apt-get install ninja-build gettext cmake unzip curl git -y
sudo apt-get install ripgrep wget -y

#dap python + python
alias python='python3'
cd ~

cp ~/.bashrc ~/.backup_bashrc
echo "alias python='python3'" >> ~/.bashrc
source ~/.bashrc

sudo apt-get install python3-pip -y
sudo apt-get install python3.10-env -y
sudo apt-get install autopep8 -y
sudo apt-get install autopep8 -y
pip install python-lsp-server
#---------

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
rm -rf vim


