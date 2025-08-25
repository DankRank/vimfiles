" Copyright (c) 2025 Egor
" SPDX-License-Identifier: Unlicense
au BufNewFile,BufRead todo.txt syn match Identifier "\<@\k\+" | syn match PreProc "\<+\k\+" | syn match Comment "^x\>.*$" | syn iskeyword @,33-255
