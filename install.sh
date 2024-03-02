apt-get install sudo -y
sudo apt-get install ninja-build gettext cmake unzip curl git -y
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
rm -rf vim


