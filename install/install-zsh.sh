sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt install -y vim
sudo apt install -y git
sudo apt install -y curl
sudo apt-get install -y terminator
sudo apt-get install -y zsh
cd
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d #if directory doesn't exists
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
sed -i -e "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"agnoster\"/g" ~/.zshrc
sudo apt-get install -y dconf-cli
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh
echo "eval `dircolors ~/.dir_colors/dircolors`" >> ~/.zshrc
echo "prompt_context() {
  if [[ \"$USER\" != \"$DEFAULT_USER\" || -n \"$SSH_CLIENT\" ]]; then
    prompt_segment black default \"%(!.%{%F{yellow}%}.)$USER\"
  fi
}" >> ~/.zshrc
