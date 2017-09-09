" Use Ack instead of grep
set grepprg=ack

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Yay swear words!
set spell	        	     " turn on spell checking.
"set virtualedit=all          " spell check in all modes.
set spellfile=~/.vim/spellfile.en.add

"" Searching
set incsearch		         " do incremental searching
set hlsearch                 " Highlight search patterns.

"" Indentation
set tabstop=4                " Tabs should visualize as 4 spaces.
set shiftwidth=4             " Autoindent 4 spaces.
set expandtab                " No tabs, only spaces.
set preserveindent           " If was tabs, keep tabs. 

set number                   " Show line numbers
set t_Co=256                 " Use 256 colors.
set nobackup		         " don't keep a backup file
set history=50		         " keep 50 lines of command line history
set ruler                    " show the cursor position all the time
set colorcolumn=80           " Highlight 80th column
set encoding=utf-8           " Use UTF-8 Encoding for files by default.
set listchars=tab:›\ ,eol:¬  " The UTF-8 characters for tabs and eol.
set vb t_vb=""		         " turn off the goddamn beeping
set foldenable               " Folding should really be default.
set lazyredraw               " Redraw only when you need to.

" Completion
set wildmode=longest,list,full " Search for cmds & autocomplete with lists.. 
set showcmd		               " display incomplete commands
