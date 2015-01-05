```
git clone https://github.com/ziemann/conf.git

cd conf
git submodule init
git submodule update
cd ..

ln -s conf/.gitconfig .gitconfig
ln -s conf/.vimrc .vimrc
ln -s conf/.vim .vim

echo "source conf/git-completion.bash" >> .bashrc
```
