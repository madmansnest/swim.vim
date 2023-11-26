function swim#leave()
  let g:swim_previous_input_method = swim#current()
  call swim#use(g:swim_default_input_method)
endfunction

function swim#current()
  return swim#do('list --current')
endfunction

function swim#use(input_method)
  if g:using_swim
    call swim#do('use '.a:input_method)
  endif
endfunction

function swim#do(cmd)
  return system(g:swim_dir.'/swim '.a:cmd)
endfunction

function swim#toggle()
  let g:using_swim = !g:using_swim
  if g:using_swim
    echo "swim on"
  else
    echo "swim off"
  endif
endfunction

