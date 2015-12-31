# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ./.vimrc ~/.vimrc
ln -s ./.bashrc ~/.bashrc
ln -s ./.bash_profile ~/.bash_profile

# install plugins
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --tern-completer

