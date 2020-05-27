#! /bin/bash

mkdir -p "${XDG_DATA_HOME:-$HOME/.config/nvim}" &&
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' &&
cd $HOME && mkdir neovim-temp && cd neovim-temp &&
git clone https://github.com/chn-cynic/neovim.git &&
cp -r ~/neovim-temp/neovim/* ~/.config/nvim &&
nvim +PlugInstall +qall &&
nvim -c "CocInstall coc-tsserver"
