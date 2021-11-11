set nocompatible
call plug#begin()
" Plugin Manager
Plug 'junegunn/vim-plug'
" AutoCompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git Plugin for Vim
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
" Go 
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries', 'for': 'go', 'tag': 'v1.25'}
" Javascript
Plug 'honza/vim-snippets', {'for': 'js'}
Plug 'SirVer/ultisnips', {'for': 'js'}
Plug 'mlaursen/vim-react-snippets', {'for': 'js'}
"Plug 'yuezk/vim-js', {'for': 'js'} "May not need because of vim-polyglot
Plug 'maxmellon/vim-jsx-pretty', {'for': 'js'}
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
Plug 'alvan/vim-closetag', {'for': ['js', 'markdown']}
Plug 'mattn/emmet-vim', {'for': ['js', 'markdown']}
Plug 'jiangmiao/auto-pairs'
" Fzzy finder
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
call plug#end()

