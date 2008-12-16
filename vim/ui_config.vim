" enable line numbers
  set number
  setlocal numberwidth=3

" These two enable syntax highlighting
  set nocompatible
  syntax on
  
" enable the tab bar
  set tabline=%!MyTabLine()
  set showtabline=2 " 2=always

" Nice statusbar
  set laststatus=2
  set statusline=\ "
  set statusline+=%f\ " file name
  set statusline+=[
  set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
  set statusline+=%{&fileformat}] " file format

  set statusline+=%h%1*%m%r%w%0* " flag
  set statusline+=%= " right align
  set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

" Title: update the title of the window?
  set title

" Title String: what will actually be displayed
  set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" Turn off rails bits of statusbar
  let g:rails_statusline=0
 
" make it pretty
  colors twilight2

