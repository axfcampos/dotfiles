all: justdoit

justdoit:
	ln -fs `pwd`/vimrc ${HOME}/.vimrc
	ln -fs `pwd`/zshrc ${HOME}/.zshrc
	ln -fs `pwd`/tmux.conf ${HOME}/.tmux.conf

	rm ${HOME}/.fonts -rf
	mkdir ${HOME}/.fonts
	cp Inconsolata\ for\ Powerline.otf ${HOME}/.fonts
	fc-cache -vf ${HOME}/.fonts
