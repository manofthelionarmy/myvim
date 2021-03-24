if has('termguicolors')
  set termguicolors
endif
 
" For dark version.
set background=dark

" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'
let g:everforest_transparent_background=1
colorscheme everforest
set number
set hlsearch
" Airline
let g:airline_powerline_fonts = 1
"Rainbow Parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" Some stuff to have to make sure that vim-go plays nice with coc-vim
let g:go_def_mapping_enabled = 0
let g:go_code_completion_enabled=0
" Tabstops per file type
" tabstop is for tabs, shiftwidth is, i.e., when you hit enter and want to
" ceate a new line, and the cursor will travel to the shiftwidth
autocmd BufNewFile,BufRead *.go set tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.js set tabstop=2 shiftwidth=2
" Utils Snips is needed for our reacts snippets, and this prevents
" UltiSnippets from screwing with our tab completion in coc
let g:UltiSnipsExpandTrigger= "<nop>"

