" get out of insert mode with cmd-i
  imap <D-i> <Esc>

" tab completion
  imap <tab> 

" redo with U
  nmap U :redo<cr>

" easy wrap toggling
  nmap ,ww :set wrap<cr>
  nmap ,wn :set nowrap<cr>

" switch windows
  nmap ,wj j
  nmap ,wk k
  nmap ,wh h
  nmap ,wl l

" Fuzzy Finder - ,t to launch; ,b just for buffers; cmd-enter to open selected file in new tab
  let g:FuzzyFinderOptions = { 'Base':{} }
  let g:FuzzyFinderOptions.Base.key_open_tab = '<D-CR>'
  nmap ,t :FuzzyFinderTextMate<cr> 
  nmap ,b :FuzzyFinderBuffer<cr> 
  nmap ,ff :ruby finder.rescan!<cr>
  

