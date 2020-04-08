function swim#leave()
  let g:swim_previous_input_method = swim#current()
  echomsg 'previous: ' . g:swim_previous_input_method
  call swim#use(g:swim_default_input_method)
endfunction

function swim#current()
  return swim#do('list --current')
endfunction

function swim#use(input_method)
  return swim#do('use '.a:input_method)
endfunction

function swim#do(cmd)
  return system(g:swim_dir.'/swim '.a:cmd)
endfunction
