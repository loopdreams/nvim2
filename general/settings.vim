" set leader key
let g:mapleader = "\<Space>"

set autoread " trigger `autoread` when files changes on disk
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
  " autocmd FileChangedShellPost * " notification after file change
  "   \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
set complete+=kspell                    " set spell spelllang=en_gb
autocmd BufRead,BufNewFile *.tex *.md setlocal spell spelllang=en_gb
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
"set nowrap                              " Display long lines as just one line
set linebreak                           " Prenents words from breaking over line
" set breakindent                         " Indent wrapped lines
" let &showbreak='  '                   " Indent amount
set encoding=UTF-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set expandtab                           " Converts tabs to spaces
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set autoindent                          " Good auto indent
set smartindent                         " Makes indenting smart
set laststatus=0                        " Always display the status line
set relativenumber                      " Relative Line numbers
set number                              " Line numbers
" set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT --
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
" set backupdir=~/.config/nvim/backup
" set directory=~/.config/nvim/swap//
set scrolloff=7

" let &backupdir = expand('~/.config/nvim/backup//') " Folder for backup files
" if !isdirectory(&backupdir) | call mkdir(&backupdir, "p") | endif
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory
" set filetype on

" makes vim look for filetype specific settings in nvim/ftplugin/ and
" sets indenting by file type
filetype plugin indent on

" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritepre * %s/\n\+\%$//e

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

	nnoremap c "_c
" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	map <leader>v :VimwikiIndex
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
