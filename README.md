dotfiles
========

Collection of useful dotfiles

## vim

To use the .vimrc, first run
`git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`

Afterwards, open vim, dismiss the error by hitting <Return> and type `:BundleInstall`.
Once complete, close vim by typing `:qall`. Now all plugins should be active and no
more error should appear on startup.

To use the javascript syntax checker you need to install jsl

* Fedora `# yum install jsl`
* Ubuntu [http://stackoverflow.com/questions/8863888/how-do-i-install-jslint-on-ubuntu](http://stackoverflow.com/questions/8863888/how-do-i-install-jslint-on-ubuntu)

## tmux

Tmux can be used to split your shell.
Go here to learn how to use tmux:
https://gist.github.com/MohamedAlaa/2961058

Please note that using the config file provided will remap the prefix to
`ctrl+A` 

When using the config file you can navigate between the tmux planes using alt + h,j,k,l vim style.

If you include the script 'dev' provided and save it under ~/.tmux/dev you can use the shortcut prefix + D to split the current window vertically and open vim in the new plane.
