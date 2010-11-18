" use gui tabs
  set guioptions+=e

" kill the menubar
  set guioptions-=T

" kill the scrollbars
  set guioptions-=r
  set guioptions-=L

" go full screen like you mean it
  set fuoptions=maxvert,maxhorz

" use a big, pretty font
  set guifont=Menlo:h14

" initial window size
  set lines=65 columns=160

" be partially transparent
"  set transparency=3

" pretty but not terminal-compatible color scheme
  set background=dark
  colors mustang

" attempt to load a custom config for the currently logged in user
  runtime! custom_config/`whoami`.gvim