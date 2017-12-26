cd $(dirname $0)
base=$(pwd)

if [[ $(uname) == "Darwin" ]]; then
	echo "source \"$base/.bashrc\"" > ~/.bash_profile
else
	(echo && echo "source \"$base/.bashrc\"") >> ~/.bashrc
fi

ln -s "$base/.gitconfig" ~/.gitconfig
ln -s "$base/.tmux.conf" ~/.tmux.conf
echo "source $base/.vimrc" > ~/.vimrc

cd .. && mkdir -p tmp/vim/{backup,swap,undo}
