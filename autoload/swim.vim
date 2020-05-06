function swim#leave()
  let g:swim_previous_input_method = swim#current()
  call swim#use(g:swim_default_input_method)
endfunction

function swim#current()
  return swim#do('list --current')
endfunction

function swim#use(input_method)
  let l:use_previous = index(g:swim_on_ft, &filetype)
  if l:use_previous != -1
    call swim#do('use '.a:input_method)
  endif
endfunction

function swim#do(cmd)
  return system(g:swim_dir.'/swim '.a:cmd)
endfunction
