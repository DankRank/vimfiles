to install:
git clone https://github.com/DankRank/vimfiles.git ~/.vim/pack/egor --recurse-submodules --shallow-submodules
ln -sf pack/egor/vimrc ~/.vim/vimrc

to update:
git submodule foreach 'git fetch && git checkout origin/HEAD'

to add a package:
gh() { git submodule add --depth 1 --name "${1##*/}" "https://github.com/$1.git" "start/${1##*/}"; }
