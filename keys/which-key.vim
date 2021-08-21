" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map[','] = [ 'Startify'              , 'start screen' ]
let g:which_key_map['d'] = [ ':bd!'                  , 'delete buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer'  , 'explorer' ]
" let g:which_key_map['f'] = [ ':BLines'               , 'find' ]
" let g:which_key_map['F'] = [ ':Files ~'              , 'home files' ]
let g:which_key_map['k'] = [ ':CocDisable'           , 'kill coc' ]
let g:which_key_map['r'] = [ ':CocEnable'            , 'restore coc' ]
let g:which_key_map['q'] = [ ':wqa'                  , 'quit' ]
let g:which_key_map['w'] = [ ':w'                    , 'write' ]
let g:which_key_map['b'] = [ ':vsp $BIB'             , 'Bibfile' ]
let g:which_key_map['p'] = [ ':!opout %'             , 'Pdf' ]
let g:which_key_map['t'] = [ ':Goyo | :Limelight!! | :TogglePencil'      , 'Goyo' ]
let g:which_key_map.u = 'undo'
" let g:which_key_map['i'] = [ 'VimtexTocOpen'         , 'index' ]
" let g:which_key_map['b'] = [ 'VimtexCompile'         , 'build' ]
" let g:which_key_map['p'] = [ 'VimtexView'            , 'preview' ]
" let g:which_key_map['R'] = [ ':source $MYVIMRC'      , 'reload' ]
" let g:which_key_map['l'] = [ ':VimtexErrors'         , 'log' ]

" Group mappings
" Telescope
let g:which_key_map.f = {
      \ 'name' : '+telescope' ,
      \ 'f' : [':Telescope find_files'  , 'find files'],
      \ 'g' : [':Telescope live_grep'   , 'live grep'],
      \ 'b' : [':Telescope buffers'     , 'buffers'],
      \ 'h' : [':Telescope help_tags'   , 'help'],
      \}
" Export
let g:which_key_map.m = {
      \ 'name' : '+export' ,
      \ 'g' : [':!lagrange % &'         , 'open in Lagrange'],
      \ 'e' : [':!compiler %'           , 'compile'],
      \ 'w' : [':Pandoc docx'           , 'to word from open'],
      \ 'm' : [':Pandoc md'             , 'to markdown from open'],
      \ 'h' : [':Pandoc html'           , 'to html from open'],
      \ 'l' : [':Pandoc latex'          , 'to latex from open'],
      \ 'p' : [':Pandoc pdf'            , 'to pdf from open'],
      \ }

      " \ 'L' : [':terminal pandoc -s expand('%:t') -o expand('%:t').tex'       , 'to latex from file'],
      " \ 'm' : [':SDelete!'              , 'to markdown from file'],

" Templates
let g:which_key_map.t = {
      \ 'name' : '+templates' ,
      \ 'p' : [':read ~/.config/nvim/templates/PhilPaper.tex'           , 'PhilPaper.tex'],
      \ 'l' : [':read ~/.config/nvim/templates/Letter2.tex'           , 'Letter.tex'],
      \ 'g' : [':read ~/.config/nvim/templates/Glossary.tex'           , 'Glossary.tex'],
      \ 'h' : [':read ~/.config/nvim/templates/HandOut.tex'           , 'HandOut.tex'],
      \ 'b' : [':read ~/.config/nvim/templates/PhilBeamer.tex'           , 'PhilBeamer.tex'],
      \ 's' : [':read ~/.config/nvim/templates/spoolfive'           , 'spoolfive header'],
      \ 'r' : [':read ~/.config/nvim/templates/Root.tex'           , 'Root.tex'],
      \ 'm' : [':read ~/.config/nvim/templates/yamlheader.md'           , 'Header Markdown'],
      \ 'c' : [':read ~/.config/nvim/templates/cosmic.txt'           , 'Cosmic Voyage'],
      \ }

" Sessions
let g:which_key_map.S = {
      \ 'name' : '+session' ,
      \ 's' : [':SSave'                , 'save session'],
      \ 'd' : [':SDelete!'              , 'delete session'],
      \ }

" Markdown
" let g:which_key_map.m = {
"       \ 'name' : '+markdown' ,
"       \ 'p' : ['<Plug>MarkdownPreview'               , 'preview'],
"       \ 'F' : ['zA'                                  , 'fold all'],
"       \ 'f' : ['za'                                  , 'fold current'],
"       \ 'k' : ['<Plug>MarkdownPreviewStop'           , 'kill'],
"       \ 's' : [':call markdown#SwitchStatus()<CR>'   , 'select'],
"       \ }
      " \ 'm' : ['<Plug>MarkdownPreviewToggle'     , 'toggle'],

" y is for you surround
let g:which_key_map.s = {
      \ 'name' : '+surround' ,
      \ 's' : ['<Plug>Ysurround'         , 'surround'],
      \ 'c' : ['<Plug>Csurround'         , 'change'],
      \ 'd' : ['<Plug>Dsurround'         , 'delete'],
      \ 'k' : ['dss'                     , 'kill'],
      \ }


" a is for actions
" let g:which_key_map.a = {
"   \ 'name' : '+actions' ,
"   \ 'y' : [':CocList -A --normal yank'               , 'yank display'],
"   \ 'a' : [':VimtexClean'                            , 'kill aux'],
"   \ 'b' : [':terminal bibexport -o %:r.bib %:r.aux'  , 'bib export'],
"   \ 'c' : [':Commands'                               , 'commands' ],
"   \ 'g' : [':e ~/.config/nvim/templates/Glossary.tex', 'edit glossary'],
"   \ 's' : [':e ~/.config/nvim/snips/tex.snippets'    , 'edit snippets'],
"   \ 't' : [':FloatermKill!'                          , 'kill terminals'],
"   \ 'w' : [':FloatermNew! cd ~/.local/share/nvim/swap | ls -A', 'show swap'],
"   \ }

" h is for GitHub
let g:which_key_map.h = {
      \ 'name' : '+github-cli' ,
      \ 'h' : [':FloatermNew! gh help'              , 'help'],
      \ 'i' : [':FloatermNew! gh issue create'      , 'create issue'],
      \ 'l' : [':FloatermNew! gh issue list'        , 'list issues'],
      \ 'r' : [':FloatermNew! gh reference'         , 'reference'],
      \ 'v' : [':FloatermNew! gh repo view -w'      , 'view repo'],
      \ }



" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'G' : [':GGrep'                            , 'git grep'],
      \ 's' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'P' : [':Git push'                         , 'push'],
      \ 'p' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 'g' : [':FloatermNew lazygit'              , 'lazygit'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

call which_key#register('<Space>', "g:which_key_map")
