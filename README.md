```
git clone https://github.com/ziemann/conf.git

cd conf
git submodules init
git submodules update
cd ..

ln -s conf/.gitconfig .gitconfig
ln -s conf/.vimrc .vimrc
ln -s conf/.vim .vim

echo "source conf/git-completion.bash" >> .bashrc
```
