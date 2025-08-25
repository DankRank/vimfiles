packloadall
packadd! editorconfig
runtime! plugin/sensible.vim
set nobackup
if has('gui_running')
	set guifont=Courier_New:h12:cANSI:qDRAFT
	set guioptions-=T
	set mouse=a
elseif has('mouse')
	set mouse=nvi
	set ttymouse=sgr
endif
colorscheme koehler
set number relativenumber laststatus=2
set tabstop=4 shiftwidth=4 noexpandtab
set title
set keymap=ukrainian-enhanced iminsert=0 imsearch=0
