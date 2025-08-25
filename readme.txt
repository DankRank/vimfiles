git clone https://github.com/DankRank/vimfiles.git ~/.vim/pack/egor
cd ~/.vim/pack/egor
git submodule update --init --depth=1
ln -sf pack/egor/vimrc ~/.vim/vimrc
