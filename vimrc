packloadall
packadd! editorconfig
runtime! plugin/sensible.vim
set nobackup
if has('gui_running')
	set guifont=Courier_New:h12:cANSI:qDRAFT
	set encoding=utf-8
	set guioptions-=T
	set mouse=a
elseif has('mouse')
	set mouse=nvi
	set ttymouse=sgr
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
