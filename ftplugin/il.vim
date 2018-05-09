" Vim filetype plugin
" Language: Instruction List
" Maintainer: Georgy Komarov <jubnzv@gmail.com>
" Latest Revision: 9 May 2018

if (exists('b:did_ftplugin'))
  finish
endif
let b:did_ftplugin = 1

compiler iec2c

setlocal formatoptions-=t
setlocal foldmethod=indent
setlocal commentstring=(\*\ %s\ \*)
