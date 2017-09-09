"" Functions for Swapping windows between two different buffers!
" Mark then swap windows.
function! MarkWindowForSwap() 
    let g:markedWinNum = winnr()
endfunction
function! DoMarkedSwap()
    " make a note of the destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    " switch to source and shuffle dest -> source
    let markedBuf = bufnr( "%" )
    " hide open so we arnt prompted and keep hist
    exe 'hide buf' curBuf
    exe curNum . "wincmd w"
    exe 'hide buf' markedBuf
endfunction

"
