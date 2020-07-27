" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '=>'
" set timeoutlen=100

" Register which key map
call which_key#register('<Space>', "g:which_key_map")

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
let g:which_key_map['/'] = [ ':Commentary'          , 'comment' ]
let g:which_key_map['%'] = [ ':source%'             , 'source%' ]
let g:which_key_map['e'] = [ ':CocCommand explorer' , 'explorer' ]
let g:which_key_map['z'] = [ 'Goyo'                 , 'zen' ]

" Group mappings

" a is for actions
let g:which_key_map.a = {
    \ 'name' : '+actions',
    \ 'n' : [':set nonumber!'           , 'line-numbers'],
    \ 'w' : [':w'                       , 'write'],
    \ 'u' : [':up'                      , 'update'],
    \ 'i' : [':e $MYVIMRC'              , 'open init.vim'],
    \ 'q' : [':q'                       , 'quit'],
    \ 'v' : ['<C-W>v'                   , 'split right'],
    \ 'h' : ['<C-W>s'                   , 'split below'],
    \ '=' : ['<C-W>='                   , 'balance windows'],
    \ 'r' : [':set norelativenumber!'   , 'relative line nums'],
    \ 's' : [':let @/ = ""'             , 'remove search highlight'],
    \ }

" b is for buffers
let g:which_key_map.b = {
    \ 'name' : '+buffer' ,
    \ '1' : ['b1'        , 'buffer 1'],
    \ '2' : ['b2'        , 'buffer 2'],
    \ '3' : ['b3'        , 'buffer 3'],
    \ '4' : ['b4'        , 'buffer 4'],
    \ '5' : ['b5'        , 'buffer 5'],
    \ '6' : ['b6'        , 'buffer 6'],
    \ '7' : ['b7'        , 'buffer 7'],
    \ '8' : ['b8'        , 'buffer 8'],
    \ '9' : ['b9'        , 'buffer 9'],
    \ 'd' : ['bd'        , 'delete-buffer'],
    \ 'f' : ['bfirst'    , 'first-buffer'],
    \ 'h' : ['Startify'  , 'home-buffer'],
    \ 'l' : ['blast'     , 'last-buffer'],
    \ 'n' : ['bnext'     , 'next-buffer'],
    \ 'p' : ['bprevious' , 'previous-buffer'],
    \ '?' : ['Buffers'   , 'fzf-buffer'],
    \ }

" f is for find
let g:which_key_map.f = {
    \ 'name' : '+find' ,
    \ 'f' : [':Files'       , 'Files'],
    \ 'b' : [':Buffers'     , 'Buffers'],
    \ 'c' : [':Commands'    , 'Commands'],
    \ 'C' : [':Maps'        , 'Nomal mode mappings'],
    \ 'r' : [':Rg'          , 'Ripgrep'],
    \ 'l' : [':Lines'       , 'Lines in loded buffers'],
    \ 'L' : [':BLines'      , 'Lines current buffer'],
    \ 't' : [':Tags'        , 'Tags in loded buffers'],
    \ 'T' : [':BTags'       , 'Tags current buffer'],
    \ 'h' : [':History'     , 'History files'],
    \ 'H' : [':History:'    , 'History commands'],
    \ 'S' : [':Snippets'    , 'Snippets (UltiSnip)'],
    \ 'g' : [':Commits'     , 'Git commits'],
    \ 'G' : [':BCommits'    , 'Git commits in buffer'],
    \ 'm' : [':Marks'       , 'Marks'],
    \ 'z' : [':FZF'         , 'FZF'],
    \ }

" g is for git
let g:which_key_map.g = {
    \ 'name' : '+git' ,
    \ 'a' : [':Git add .'                       , 'add all'],
    \ 'A' : [':Git add %'                       , 'add current'],
    \ 'b' : [':Git blame'                       , 'blame'],
    \ 'B' : [':GBrowse'                         , 'open in git'],
    \ 'c' : [':Git commit'                      , 'commit'],
    \ 'd' : [':Gdiffsplit'                      , 'diff split'],
    \ 'D' : [':Git diff'                        , 'diff'],
    \ 's' : [':GGrep'                           , 'search in git'],
    \ 'S' : [':Gstatus'                         , 'status'],
    \ 'k' : ['<plug>(signify-prev-hunk)'        , 'prev hunk'],
    \ 'j' : ['<plug>(signify-next-hunk)'        , 'next hunk'],
    \ 'l' : [':Git log'                         , 'log'],
    \ 'm' : [':GMove'                           , 'move'],
    \ 'p' : [':Git push'                        , 'push'],
    \ 'P' : [':Git pull'                        , 'pull'],
    \ 'r' : [':GRemove'                         , 'remove'],
    \ 't' : [':SignifyToggle'                   , 'toggle signs'],
    \ }

" l is for language server protocol
let g:which_key_map.l = {
    \ 'name' : '+lsp' ,
    \ '.' : [':CocConfig'                           , 'config'],
    \ 'a' : ['<Plug>(coc-codeaction-line)'          , 'actions in line'],
    \ 'A' : ['<Plug>(coc-codeaction)'               , 'actions file'],
    \ 'c' : [':CocList commands'                    , 'commands'],
    \ 'd' : ['<Plug>(coc-action-diagnosticList)'    , 'diagnostic list'],
    \ 'e' : [':CocList extensions'                  , 'extensions'],
    \ 'f' : ['<Plug>(coc-format)'                   , 'forMat'],
    \ 'F' : ['<Plug>(coc-format-selected)'          , 'format selected'],
    \ 'S' : ['<Plug>(coc-range-select)'             , 'Select'],
    \ 'n' : ['<Plug>(coc-diagnostic-next)'          , 'next diagnostic'],
    \ 'N' : ['<Plug>(coc-diagnostic-next-error)'    , 'next error'],
    \ 'O' : [':CocList outline'                     , 'outline'],
    \ 'i' : [':CocList -I symbols'                  , 'workspace symbols'],
    \ 'p' : ['<Plug>(coc-diagnostic-prev)'          , 'prev diagnostic'],
    \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'    , 'prev error'],
    \ 'q' : ['<Plug>(coc-fix-current)'              , 'quickfix'],
    \ 'r' : ['<Plug>(coc-rename)'                   , 'rename'],
    \ 'U' : [':CocUpdate'                           , 'update CoC'],
    \ 'o' : {
        \ 'name': '+operation',
        \ 'f' : ['<Plug>(coc-funcobj-i)'    , 'Select inside function'],
        \ 'F' : ['<Plug>(coc-funcobj-a)'    , 'Select around function'],
        \ 'c' : ['<Plug>(coc-classobj-i)'   , 'Select inside class/struct/interface'],
        \ 'C' : ['<Plug>(coc-classobj-a)'   , 'Select around class/struct/interface'],
        \ },
    \ 'g' : {
        \ 'name': '+goto',
        \ 'd' : ['<Plug>(coc-definition)'       , 'definition'],
        \ 'D' : ['<Plug>(coc-declaration)'      , 'declaration'],
        \ 't' : ['<Plug>(coc-type-definition)'  , 'type definition'],
        \ 'i' : ['<Plug>(coc-implementation)'   , 'implementation'],
        \ 'r' : ['<Plug>(coc-references)'       , 'references'],
        \ },
    \ 's' : {
        \ 'name': '+search',
        \ 'e' : [':CocSearch -e'            , '--regexp'],
        \ 'F' : [':CocSearch -F'            , '--ixed-strings'],
        \ 'L' : [':CocSearch -L'            , '--follow'],
        \ 'g' : [':CocSearch -g'            , '--glob'],
        \ 'h' : [':CocSearch --hidden'      , 'hidden files and directories'],
        \ 'H' : [':CocSearch --no-ignore-vcs' , 'ignore files (.gitignore, etc.)'],
        \ 'w' : [':CocSearch -w'            , 'surrounded by word boundaries'],
        \ 'S' : [':CocSearch -S'            , 'Searches case insensitively'],
        \ 'C' : [':CocSearch --no-config'   , 'Never read configuration files'],
        \ 'x' : [':CocSearch -x'            , 'Only show matches surrounded by line boundaries'],
        \ },
    \ }

" w is for wiki
let g:which_key_map.w = {
      \ 'name' : '+wiki' ,
      \ 'h' : [':help vimwiki'              , 'wiki help'],
      \ 'c' : [':help vimwiki-commands'     , 'wiki commands'],
      \ 'w' : ['<Plug>VimwikiIndex'         , 'open wiki'],
      \ 't' : ['<Plug>VimwikiTabIndex'      , 'open wiki (tab)'],
      \ 's' : ['<Plug>VimwikiUISelect'      , 'list & select wikis'],
      \ 'i' : ['<Plug>VimwikiDiaryIndex'    , 'open diary wiki'],
      \ 'd' : ['<Plug>VimwikiDeleteLink'    , 'delete wiki'],
      \ 'r' : ['<Plug>VimwikiRenameLink'    , 'rename wiki'],
      \ }

" p is for startify
let g:which_key_map.p = {
    \ 'name' : '+proyect' ,
    \ 'i' : [':Startify'      , 'startify init'],
    \ 'l' : [':SLoad'         , 'load a session'],
    \ 's' : [':SSave'         , 'save a session'],
    \ 'd' : [':SDelete'       , 'delete a session'],
    \ 'c' : [':SClose'        , 'close a session'],
    \ }

" p is for startify
let g:which_key_map.c = {
    \ 'name' : '+correction' ,
    \ 'p' : ['[s'        , 'previous mistake'],
    \ 'n' : [']s'        , 'next mistake'],
    \ 'c' : ['z='        , 'corrections:'],
    \ 'l' : {
        \ 'name': '+language',
        \ 'e' : [':setlocal spell! spelllang=en_us<CR>'   , 'eng-us'],
        \ 's' : [':setlocal spell! spelllang=es_mx<CR>'   , 'spa-mx'],
        \ 'p' : [':setlocal spell! spelllang=pt_br<CR>'   , 'pt-br'],
        \ },
    \ }
