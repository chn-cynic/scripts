#! /bin/bash

rm -rf ~/.config/nvim &&
mkdir -p "${XDG_DATA_HOME:-$HOME/.config/nvim}" &&
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' &&
cd /tmp && mkdir neovim-temp && cd neovim-temp &&
git clone https://github.com/chn-cynic/neovim.git &&
cp -r /tmp/neovim-temp/neovim/* ~/.config/nvim/ &&
#rm -rf /tmp/neovim-temp/ &&
nvim +PlugInstall +qall
