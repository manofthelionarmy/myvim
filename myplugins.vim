set nocompatible
let g:ale_disable_lsp = 1
call plug#begin()
" Plugin Manager
Plug 'junegunn/vim-plug'
" AutoCompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/FixCursorHold.nvim'
" Git Plugin for Vim
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
" Go 
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries', 'for': 'go', 'tag': 'v1.25'}
" NerdTree and Plugins
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin' "Git plugin for NerdTree
" Tmux
Plug 'christoomey/vim-tmux-navigator'
" Color schemes
Plug 'morhetz/gruvbox'
" Appearance
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons' "also used by NerdTree
" -- Etc
Plug 'kien/rainbow_parentheses.vim'
Plug 'alvan/vim-closetag', {'for': ['javascript', 'markdown']}
Plug 'mattn/emmet-vim', {'for': ['javascript', 'markdown']}
Plug 'jiangmiao/auto-pairs'

" Javascript, JSX
Plug 'pangloss/vim-javascript', {'for':['javascript', 'javascriptreact']}
Plug 'MaxMEllon/vim-jsx-pretty', {'for':['javascript', 'javascriptreact']}

" Fzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Airline already has this feature
" Plug 'ap/vim-buftabline'
" Plug 'Yggdroot/indentLine'
call plug#end()

