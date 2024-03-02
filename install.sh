#copy and paste this sh file into a sh file on vm and run

apt-get install sudo -y
sudo apt-get install ninja-build gettext cmake unzip curl git -y
sudo apt-get install ripgrep

#dap python
alias python='python3'
cd ~
mkdir .virtualenvs
cd .virtualenvs
python -m venv debugpy
debugpy/bin/python -m pip install debugpy

# python 
sudo apt-get install python3-pip
sudo apt-get install python3.10-env
#sudo apt-get install npm  (for pyright)
sudo apt-get install autopep8
pip install -u jedi-language-server

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


