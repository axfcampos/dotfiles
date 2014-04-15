all: justdoit

justdoit:
	# install oh-my-zsh (must have z shell installed)
	wget --no-check-certificate http://install.ohmyz.sh -O - | sh
	
	# update plugins
	git submodule init
	git submodule update --init --recursive
	
	# install YouCompleteMe
	./bundle/YouCompleteMe/install.sh --clang-completer

	# link config files for zshell, vim and tmux
	rm ${HOME}/.zshrc
	ln -fs `pwd`/vimrc ${HOME}/.vimrc
	ln -fs `pwd`/zshrc ${HOME}/.zshrc
	ln -fs `pwd`/tmux.conf ${HOME}/.tmux.conf

	# Install font
	rm ${HOME}/.fonts -rf
	mkdir ${HOME}/.fonts
	cp Inconsolata\ for\ Powerline.otf ${HOME}/.fonts
	fc-cache -vf ${HOME}/.fonts
