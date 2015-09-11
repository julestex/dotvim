set nocompatible

" Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
     source ~/.vimrc.bundles
endif

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

" move current line/block up and down
nmap <C-Up> :m .-2<CR>==
nmap <C-Down> :m .+1<CR>==
vmap <C-Up> :m '<-2<CR>gv=gv
vmap <C-Down> :m '>+1<CR>gv=gv

" Git commit messages word-wrap
autocmd Filetype gitcommit setlocal textwidth=72

" Misc
set cursorline " Highlight current line
set mouse=a "enable mouse in all mode
set expandtab "Expand tabs to spaces

" Automatially insert use statement for class under the cursor.
noremap <Leader>u :call PhpInsertUse()<CR>
nnoremap <Leader>so magg/use<CR>vip:sort<CR>`a:delmarks a<CR>`

" Remove trailing whitespace with <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Create a getter for the word under the cursor
map <leader>g mayiwGO<CR>public function get<ESC>pblll~A()<CR>{<CR>return $this-><ESC>pA;<CR>}<ESC>gg=G`a:delm a<CR>

" Stop that stupid window from popping up
map q: :q
