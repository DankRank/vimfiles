unlet! skip_default_vim
source $VIMRUNTIME/defaults.vim
""""
" Defaults which I particularly care about
"
"set nocompatible
"syntax on
"set nobackup
"set backspace=indent,eol,start
"set ruler
"filetype plugin on
""""

packloadall

if has('gui_running')
	set guifont=Courier_New:h12:cANSI:qDRAFT
	set encoding=utf-8
	set guioptions-=T
endif
colorscheme koehler
set number relativenumber laststatus=2
set tabstop=4 shiftwidth=4 noexpandtab

if &term == 'screen'
	set title t_ts=_ t_fs=\
elseif &term == 'tmux' || &term == 'tmux-256color' || &term == 'xterm'
	set title
endif

" Keymaps
command Ru set keymap=russian-jcukenwin
command Uk set keymap=ukrainian-enhanced
command En set iminsert=0 imsearch=0
Uk
En
