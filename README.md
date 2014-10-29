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
