#install basic toolset
os=`uname`

if [[ "$os" == 'Linux' ]]; then
  . ~/dotfiles/apt-get.sh
elif [[ "$os" == 'Darwin' ]]; then
  . ~/dotfiles/brew.sh
fi

#vim config file
if [ ! -f ~/.vimrc ];
then
  ln -s ~/dotfiles/.vimrc ~/.vimrc
fi
#tmux config
if [ ! -f ~/.tmux.conf ];
then
  ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
fi
#zsh config
if [ ! -f ~/.zshrc ];
then
  ln -s ~/dotfiles/.zshrc ~/.zshrc
fi

if [ ! -d ~/.vim ];
then
  ln -s ~/dotfiles/.vim ~/.vim
  ln -s ~/dotfiles/bundle ~/.vim/bundle
fi

if [ ! -d ~/dotfiles/.vim/tmp ];
then
  mkdir ~/dotfiles/.vim/tmp
fi

if [ ! -d ~/dotfiles/.vim/backup ];
then
  mkdir ~/dotfiles/.vim/backup
fi

#git config file
if [ ! -f ~/.gitconfig ];
then
  ln -s ~/dotfiles/.gitconfig ~/.gitconfig
fi

#git update submodules
git submodule init
git submodule update

#installing oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

vim +BundleInstall +qall
