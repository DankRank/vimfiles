to install:
git clone https://github.com/DankRank/vimfiles.git ~/.vim/pack/egor --recurse-submodules --shallow-submodules
ln -sf pack/egor/vimrc ~/.vim/vimrc

to update:
git submodule foreach 'git fetch && git checkout origin/HEAD'
