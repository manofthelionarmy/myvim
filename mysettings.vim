set encoding=UTF-8
if has('termguicolors')
  set termguicolors
endif
 
" For dark version.
set background=dark
" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
colorscheme gruvbox
" Transparent background
hi Normal guibg=NONE ctermbg=NONE

" set number
set number relativenumber
set hlsearch
set cursorline
set autochdir
set ignorecase
set mouse=a
set pumheight=10
set lazyredraw
set splitright
set smartindent
set noswapfile
set scrolloff=8
set sidescrolloff=8
set expandtab
set nowrap
set numberwidth=4
set tabstop=2
set shiftwidth=2
set undofile
set smartcase
set signcolumn="yes:1"
" let g:indentLine_char_list = ['⇛	']
" let g:indentLine_color_term = 239
" let g:indentLine_defaultGroup = 'SpecialKey'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_stl_path_style = 'short'
let g:airline_section_c_only_filename = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let NERDTreeShowHidden=1

"Rainbow Parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" Some stuff to have to make sure that vim-go plays nice with coc-vim
let g:go_def_mapping_enabled = 0
let g:go_code_completion_enabled=0
let g:go_gopls_enabled = 0
let g:go_echo_go_info = 0
let g:go_imports_autosave = 1
let g:go_fmt_autosave = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_fields = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

"Ale
let g:ale_lint_on_text_changed=0
let g:ale_lint_on_insert_leave=1
let g:ale_lint_on_enter=1
let g:ale_lint_on_save=1
let g:ale_set_highlights=0
let g:ale_set_loclist=0
let g:ale_cursor_detail=0
let g:ale_set_signs=1
let g:ale_virtualtext_cursor=0
let g:ale_change_sign_column_color=0
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
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

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap tn :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Commentary key bindings
nnoremap \/ :Commentary<CR>
vnoremap \/ :Commentary<CR>

" VsCode stuff?
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" FZF and RG :)
 let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
 let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --theme=TwoDark --color=always --style=header,grid --line-range :300 {}'"
 
 function! RipgrepFzf(query, fullscreen)
   let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case --glob "!node_modules/" -g "!vendors/" -g "!.git/" -- %s || true'
   let initial_command = printf(command_fmt, shellescape(a:query))
   let reload_command = printf(command_fmt, '{q}')
   let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
   call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
 endfunction
 
 command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

nnoremap <silent> <leader>tt :FZF<CR>
nnoremap <silent> <leader>tl :RG<CR>
nnoremap <silent> <leader>tbb :Buffers<CR>

 
autocmd BufEnter * silent! lcd %:h:p

nnoremap <silent> <S-l> :bnext<CR>
nnoremap <silent> <S-h> :bprev<CR>

nnoremap <silent> <leader>c :bd<CR>
