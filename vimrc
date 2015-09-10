" Vundle requirements {
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" My plugins
Plugin 'scrooloose/nerdtree.git' " show nav tree
Plugin 'kien/ctrlp.vim' " fast file search
Plugin 'FelikZ/ctrlp-py-matcher' " super-fast matcher for ctrlp
Plugin 'evidens/vim-twig' " syntax colorization for Twig templates
Plugin 'bling/vim-airline' " airline status bar
Plugin 'altercation/vim-colors-solarized' "solarized color scheme
Plugin 'airblade/vim-gitgutter' " show git diff in the gutter
Plugin 'tpope/vim-fugitive' " git wrapper
Plugin 'Townk/vim-autoclose' " autoclose brackets, parenthesis…

call vundle#end()
filetype plugin indent on
" }

syntax on

" colors and scheme
set t_Co=16
colorscheme solarized
set background=dark
let g:solarized_visibility = "high"

set ignorecase " ignore case by default when searching
set nostartofline
set number " show line numbers

let g:mapleader=","

" http://blog.patspam.com/2014/super-fast-ctrlp
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_by_filename = 1

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

" CTRL+n to display NERDTree
map <C-n> :NERDTreeToggle<CR>
" switch between buffers
map <S-Left> :bp<CR>
map <S-Right> :bn<CR>

" Git commit messages word-wrap
autocmd Filetype gitcommit setlocal textwidth=72

" Mouse handling
set mouse=a "enable mouse in all mode
