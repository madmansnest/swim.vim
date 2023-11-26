if exists('g:loaded_swim')
  finish
endif

let g:loaded_swim = 1

let g:using_swim = 1

nnoremap <leader>q :call swim#toggle()<cr>

let g:swim_dir = get(g:, 'swim_dir', expand('<sfile>:p:h:h'))

let g:swim_default_input_method = get(g:, 'swim_default_input_method', 'com.apple.keylayout.ABC')

let g:swim_previous_input_method = g:swim_default_input_method 

augroup swim
  autocmd!
  autocmd InsertEnter * call swim#use(g:swim_previous_input_method)
  autocmd InsertLeave * call swim#leave()
augroup ENDGROUP
