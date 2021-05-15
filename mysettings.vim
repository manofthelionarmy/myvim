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
colorscheme gruvbox
if g:colors_name != "everforest"
  hi Normal guibg=NONE ctermbg=NONE
endif
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

let g:tmux_navigator_no_mappings = 1
if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    silent! execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      call system("tmux select-pane -" . a:tmuxdir)
      redraw!
    endif
  endfunction

  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif

" Dev icons
let g:airline_powerline_fonts = 1
