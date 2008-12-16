" make it easy to modify configuration
  :nmap ,s :source ~/.vimrc<cr>
  :nmap ,v :tabe ~/.vimrc<cr>
  
" display file browser
  :nmap ,d :NERDTreeToggle<cr>

" tag list
  :nmap <F3> :TlistToggle<cr>
  :nmap ,a ::TlistAddFilesRecursive app<cr>TlistAddFilesRecursive lib<cr>TlistAddFilesRecursive public/stylesheets<cr>

" execute shell command
  :nmap ,sh :Shell 

" run current spec
  :nmap ,sf :Shell script/spec -fn %<cr>

" run current ruby file
  :nmap ,st :Shell ruby %<cr>
  
" get out of insert mode with cmd-i
  :imap <D-i> <Esc>

" redo with U
  :nmap U :redo<cr>

" easy wrap toggling
  :nmap ,r :set wrap<cr>
  :nmap ,R :set nowrap<cr>

" quoting and symbolizing strings
  :nmap ,q :s/\v:(\w+)/'\1'<cr>
  :nmap ,sym :s/\v(['"])(.{-})\1/:\2<cr>

" irb goodness
  autocmd FileType irb inoremap <buffer> <silent> <Cr> <Esc>:<C-u>ruby v=VIM::Buffer.current;v.append(v.line_number, eval(v[v.line_number]).inspect)<Cr>
  nnoremap ,irb :<C-u>below new<Cr>:setfiletype irb<Cr>:set syntax=ruby<Cr>:set buftype=nofile<Cr>:set bufhidden=delete<Cr>i

" Fuzzy Finder - ,t to launch; ,b just for buffers; cmd-enter to open selected file in new tab
  let g:FuzzyFinderOptions = { 'Base':{}, 'Buffer':{}, 'File':{}, 'Dir':{}, 'MruFile':{}, 'MruCmd':{}, 'FavFile':{}, 'Tag':{}, 'TaggedFile':{}}
  let g:FuzzyFinderOptions.Base.key_open_tab = '<D-CR>'
  :nmap ,t :FuzzyFinderTextMate<cr> 
  :nmap ,b :FuzzyFinderBuffer<cr> 
  :nmap ,ff :ruby finder.rescan!<cr>
  

