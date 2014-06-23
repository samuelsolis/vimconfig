" Following lines added by drush vimrc-install on Thu, 10 Apr 2014 09:21:18 +0000.
set nocompatible
set nu
set cursorline
call pathogen#infect('/home/vagrant/.drush/vimrc/bundle/{}')
call pathogen#infect('/home/vagrant/.vim/bundle/{}') 
" End of vimrc-install additions.
source $VIMRUNTIME/vimrc_example.vim
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
