" Only do this part when compiled with support for autocommands.
if has("autocmd")

	" Enable file type detection.
	" Use the default filetype settings, so that mail gets 'tw' set to 72,
	" 'cindent' is on in C files, etc.
	" Also load indent files, to automatically do language-dependent indenting.
	filetype plugin indent on

	" Put these in an autocmd group, so that we can delete them easily.
	augroup vimrcEx
		au!

		" For all text files set 'textwidth' to 80 characters.
		autocmd FileType text setlocal textwidth=80

		" When editing a file, always jump to the last known cursor position.
		" Don't do it when the position is invalid or when inside an event handler
		" (happens when dropping a file on gvim).
		autocmd BufReadPost *
					\ if line("'\"") > 0 && line("'\"") <= line("$") |
					\   exe "normal g`\"" |
					\ endif

        " Make sure those Markdown files are recognized correctly.
		au BufRead,BufNewFile *.mkd,*.markdown,*.md,*.mkdn setf mkd
		au BufRead,BufNewFile *.mkd,*.markdown,*.md,*.mkdn setlocal spell
	augroup END
endif " has("autocmd")
 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Language improvements:

" Manticore: (should look like ML)
au BufNewFile,BufRead *.pml set filetype=sml

" Rust: (get racer.vim to know about rust-src)
set hidden
let g:racer_cmd="~/bin/racer"
let $RUST_SRC_PATH="/home/darkstar/Code/utils/rust/src/"

" Erlang: 
let erlang_folding = 1
" set runtimepath^=~/.vim/bundle/vim-erlang-runtime/
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugin Overrides:

" Start startify screen so we can load sessions
let g:startify_session_dir = '~/.vim/sessions'
let g:startify_show_sessions = 1
let g:startify_show_files = 1
let g:startify_show_files_number = 10
let g:startify_bookmarks = [ '~/.vimrc', '~/.zshrc' ]

" Allow vim to close if NERD TREE is the only window open
autocmd bufenter * if (winnr("$") == 1 &&  exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
 
