set ut=50

au CursorMoved  * call s:BoostMoveON()
au CursorMovedI * call s:BoostMoveON()
au CursorHold   * call s:BoostMoveOFF()
au CursorHoldI  * call s:BoostMoveOFF()

func! s:BoostMoveON()
  if &cursorline == 1
    setlocal nocursorline
  endif
endfunction

func! s:BoostMoveOFF()
  if &cursorline == 0
    setlocal cursorline
  endif
endfunction
