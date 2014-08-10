dotfiles
========

**I no longer use these configs. Current setup at: https://github.com/axfcampos/.terminal.configs**

This is a basic setup configuration for [vim](http://www.vim.org/), [tmux](http://tmux.sourceforge.net/) and [zsh](http://www.zsh.org/).

Requires all three of the above to be previously installed.

### Usage
```
$ git clone https://github.com/axfcampos/dotfiles.git ~/.vim
$ cd ~/.vim
$ make
```

Sets up zsh with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/) ('clean' theme), defining `.zshrc`.

Sets up tmux by defining `.tmux.conf` with a basic [dark solarized theme](https://github.com/seebi/tmux-colors-solarized/blob/master/tmuxcolors-dark.conf).

Sets up your vim with several plugins using [pathogen](https://github.com/tpope/vim-pathogen):

* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) for code completion
* [tmuxline.vim](https://github.com/edkolev/tmuxline.vim)
* [vim airline](https://github.com/bling/vim-airline)
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
* [delimitMate](https://github.com/Raimondi/delimitMate)
* [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
* [python-mode](https://github.com/klen/python-mode)
* [nesC highlighting](https://github.com/vim-scripts/NesC-Syntax-Highlighting) (Although not as a submodule, since its not in bundle)
Last but not least, the [Inconsolata for Powerline](https://github.com/Lokaltog/powerline-fonts/tree/master/Inconsolata) font is added.

You can also add the [Solarized Theme to iTerm2](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized) for full solarization!

Also for [Gnome Terminal](https://github.com/sigurdga/gnome-terminal-colors-solarized.git)!

Finally, if you wish to [add more plugins](http://usevim.com/2012/03/01/using-pathogen-with-git-submodules/) to vim using pathogen:

```
cd ~/.vim
git submodule init
git submodule add git://github.com/user/some-vim-plugin.git bundle/some-vim-plugin
git commit -m 'Added some-vim-plugin'
git push
```

If the new plugins are kept as submodules they will all be installed the next time you clone your repo to a new place for a fresh installation.

### Final Result

![Example](https://raw.githubusercontent.com/axfcampos/dotfiles/master/example.png)
