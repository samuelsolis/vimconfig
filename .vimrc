" Following lines added by drush vimrc-install on Thu, 09 Oct 2014 08:19:08 +0000.
set nocompatible
" call pathogen#infect('/home/vagrant/.drush/vimrc/bundle')
call pathogen#infect('/home/vagrant/.drush/vimrc/bundle/{}')
" call pathogen#infect('/home/vagrant/.vim/bundle')
call pathogen#infect('/home/vagrant/.vim/bundle/{}')
" End of vimrc-install additions.
" Following lines added by drush vimrc-install on Thu, 10 Apr 2014 09:21:18 +0000.
set nu
set cursorline

" End of vimrc-install additions.
source $VIMRUNTIME/vimrc_example.vim
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
colorscheme vibrantink

let g:syntastic_php_phpcs_args="--standard=Drupal --extensions=php,module,inc,install,test,profile,theme"
if has('statusline')
  set laststatus=2
  set statusline=%<%f\ " Filename
  set statusline+=%w%h%m%r " Options
  set statusline+=%{fugitive#statusline()} " Git Hotness
  set statusline+=\ [%{&ff}/%Y] " filetype
  set statusline+=\ [%{getcwd()}] " current dir
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_enable_signs=1
  set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif
