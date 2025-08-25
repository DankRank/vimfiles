packloadall
packadd! editorconfig
runtime! plugin/sensible.vim
if has('gui_running')
	set guifont=Hack\ 12,DejaVu\ Sans\ Mono\ 12,Courier_New:h12:cANSI:qDRAFT
	set guioptions-=T
	set mouse=a
elseif has('mouse')
	set mouse=nvi
	set ttymouse=sgr
endif
colorscheme koehler
set number relativenumber modeline title
set tabstop=4 shiftwidth=0 softtabstop=-1 noexpandtab
set keymap=ukrainian-enhanced iminsert=0 imsearch=0
let g:recutils_no_folding=1
