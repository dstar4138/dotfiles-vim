" Makes tab usage easier.
map <C-t> :tabn<Enter>
" map <C-n> :tabnew<Enter>
" Makes split buffer movement easier
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Because I reeeally need to break the habit
noremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>

" Launch/Hide NERDTree tab.
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Launch/Hide TagBar tab.
map <Leader>t :TagbarToggle<CR>

" Copy/Paste buffers
noremap <silent> <leader>mw :call MarkWindowForSwap()<CR>
noremap <silent> <leader>pw :call DoMarkedSwap()<CR>

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Because I fold a lot, here's nicer IMO folding using f-all, f-this.
noremap fa zi 
noremap ft za
nmap <leader>l :set list!<CR>

"" Code omni completion shorthand
map <C-}> <C-x><C-o>

"" Code folding shorthand
noremap <Space> za

" I use vim to dig around in files, most of the time i just want to quit
" quickly.
ca Wq wq
ca wQ wq
ca qq q!


