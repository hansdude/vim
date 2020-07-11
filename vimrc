" Automatically download vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Set up the plugins outside of the repo.
call plug#begin('~/.vim-plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'sirtaj/vim-openscad'
call plug#end()

:set nobackup
:set nowritebackup
:set tabstop=4
:set shiftwidth=4
:set expandtab
