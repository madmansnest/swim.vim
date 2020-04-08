let g:swim_dir = expand('<sfile>:p:h:h')

let g:swim_previous_input_method = ''

let g:swim_default_input_method = 'com.apple.keylayout.ABC'

augroup swim
  autocmd InsertEnter * call swim#use(g:swim_previous_input_method)
  autocmd InsertLeave * call swim#leave()
augroup ENDGROUP
