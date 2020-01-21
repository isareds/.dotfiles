set nocompatible              " be iMproved, required
filetype off                  " required
set tabstop=2
set shiftwidth=2
set termguicolors
set nu


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'maksimr/vim-jsbeautify'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'evanleck/vim-svelte'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tarekbecker/vim-yaml-formatter'
Plugin 'digitaltoad/vim-jade'
call vundle#end()            " required


" install plug package manager if not exist
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mcmartelle/vim-monokai-bold'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype plugin indent on    " required
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>

"theme settings
colorscheme monokai-bold

let g:indent_guides_enable_on_vim_startup = 1

nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>

map <Tab><up> :tabr<cr>
map <Tab><down> :tabl<cr>
map <tab><left> :tabp<cr>
map <tab><right> :tabn<cr>


" New Mapping for Arrow Keys
nnoremap j h
nnoremap k j
nnoremap i k
nnoremap l l

vnoremap j h
vnoremap k j
vnoremap i k
vnoremap l l

inoremap jk <esc>

"NERD tree mappings
map <C-n> :NERDTreeToggle<CR>
