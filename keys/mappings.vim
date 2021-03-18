" NOTES
" check mapping with :verbose map ____

" Terminal mappings
nnoremap  <C-t> :FloatermToggle<CR>
tnoremap <C-t> <C-\><C-n>:FloatermToggle<CR>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" remap Return to save
nmap <CR> <plug>(vimtex-context-menu)

" TAB in general mode will move to text buffer
nnoremap <c-k> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <c-j> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap > >gv
vnoremap < <gv
nnoremap > <S-v>><esc>
nnoremap < <S-v><<esc>

" " Better window navigation
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" Horizontal line movement
nnoremap <S-h> g^
nnoremap <S-l> g$
vnoremap <S-h> g^
vnoremap <S-l> g$

" Open Manual for word
nnoremap <M-m> :execute "help " . expand("<cword>")<cr>

" Display line movements
nnoremap <S-k> gk
nnoremap <S-j> gj
vnoremap <S-k> gk
vnoremap <S-j> gj

" Comment out line
 nnoremap <C-\> :Commentary<CR>
 vnoremap <C-\> :Commentary<CR>

" UndoTree bindings
nnoremap <space>u :UndotreeToggle<CR> \| <C-w>h

" UndotreeToggle
nnoremap <space>u :UndotreeToggle<CR>

" Fuzzy Search
nnoremap <C-p> :Files<CR>

" Kill search on escape
nnoremap <esc> :noh<return><esc>

" Spelling: http://vimdoc.sourceforge.net/htmldoc/spell.html
nnoremap <C-s> a<C-X><C-S>

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <C-j>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" " Markdown
let g:markdown_mapping_switch_status = '<Space>ms'
let g:pandoc#biblo#sources = "g"
let g:pandoc#biblio#bibs =['$BIB']


" Snippets in Coc
  " Use <C-l> for trigger snippet expand.
  imap <C-l> <Plug>(coc-snippets-expand)

  " Use <C-j> for select text for visual placeholder of snippet.
  " vmap <C-j> <Plug>(coc-snippets-select)

  " Use <C-j> for jump to next placeholder, it's default of coc.nvim
  let g:coc_snippet_next = '<CR>'

  " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
  let g:coc_snippet_prev = '<TAB>'

  " Use <C-j> for both expand and jump (make expand higher priority.)
  " imap <C-j> <Plug>(coc-snippets-expand-jump)

  " let g:UltiSnipsExpandTrigger='<Nop>'
  " let g:UltiSnipsJumpForwardTrigger = '<TAB>'
  " let g:UltiSnipsJumpBackwardTrigger = '<S-TAB>'
" scroll through autocomplete in commandline tab-menu
cnoremap <C-j> <C-n>
cnoremap <C-k> <C-p>

" remap Y to what it should be
" nnoremap <S-y> y$
" Drag lines
" xnoremap <silent> <M-k> :call wincent#mappings#visual#move_up()<CR>
" xnoremap <silent> <M-j> :call wincent#mappings#visual#move_down()<CR>
" vnoremap <M-j> :m '>+1<CR>gv
" vnoremap <M-k> :m '<-2<CR>gv
" nnoremap <M-j> <S-v> :m '>+1<CR>gv<esc>
" nnoremap <M-k> <S-v> :m '<-2<CR>gv<esc>
" inoremap <M-j> <esc><S-v> :m '>+1<CR>gv<esc>
" inoremap <M-k> <esc><S-v> :m '<-2<CR>gv<esc>

" compiler/pdf preview
" Compile document, be it groff/LaTeX/markdown/etc.
	" map <leader>c :w! | !compiler "<c-r>%"<CR>
" Open corresponding .pdf/.html or preview
	" map <leader>p :!opout <c-r>%<CR><CR>

" " Use alt + hjkl to resize windows
" nnoremap <M-j>    :resize -2<CR>
" nnoremap <M-k>    :resize +2<CR>
" nnoremap <M-h>    :vertical resize -2<CR>
" nnoremap <M-l>    :vertical resize +2<CR>
" Registers
" nnoremap d "dd
" vnoremap d "dd
" nnoremap D vg_"dd
" vnoremap D g_"dd
" nnoremap y "xy
" vnoremap y "xy
" nnoremap p "xp
" vnoremap p "xp
