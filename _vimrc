" Automatic reloading of .vimrc
autocmd! bufwritepost _vimrc source %

set nocompatible	" be iMproved, required
syntax enable
set nu
filetype off 		" required
set backspace=2
set shellslash

" easier moving of code blocks
vnoremap < <gv	" better indentation
vnoremap > >gv	" better indentation

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim-solarized
Plugin 'flazz/vim-colorschemes'

" Syntastic
"Plugin 'scrooloose/syntastic'

" NERDTree
Plugin 'scrooloose/nerdtree'

" emmet
"Plugin 'mattn/emmet-vim'

" rust syntax highlighting, file detection, formatting, Syntastic integration
"Plugin 'rust-lang/rust.vim'

" golang development plugin
"Plugin 'fatih/vim-go'

" ctrlp
"Plugin 'kien/ctrlp.vim'

" Surround
"Plugin 'tpope/vim-surround'

" numbers
"Plugin 'myusuf3/numbers.vim'

" neocomplete
"Plugin 'Shougo/neocomplete'

" auto-pairs
Plugin 'jiangmiao/auto-pairs'

" endwish 
"Plugin 'tpope/vim-endwise'

" indentpython
Plugin 'vim-scripts/indentpython.vim'

call vundle#end()		" required
filetype plugin indent on	" required

" map CTRL+n to open and close NERDTree
map <C-n> :NERDTreeToggle<CR>

" Color scheme
if has("gui_running")
    set t_Co=256
    color solarized
    set background=dark
    " set guifont=Iosevka:h12
    set guifont=Consolas:h12
endif

" tabs to spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Unbind arrow keys
for prefix in ['i', 'n', 'v']
    for key in ['<Up>', '<Down>', '<Left>', '<Right>']
        exe prefix . "noremap " . key . " <Nop>"
    endfor
endfor

" JS, html, css
au! BufNewFile,BufRead *.js set tabstop=2 softtabstop=2 shiftwidth=2
au! BufNewFile,BufRead *.html set tabstop=2 softtabstop=2 shiftwidth=2
au! BufNewFile,BufRead *.css set tabstop=2 softtabstop=2 shiftwidth=2

set laststatus=2
