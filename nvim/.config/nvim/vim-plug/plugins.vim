" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " devicons
    Plug 'ryanoasis/vim-devicons'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " onedark theme
    Plug 'joshdick/onedark.vim'
    " papercolor theme
    Plug 'NLKNguyen/papercolor-theme'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Airline & airline-theme
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " rainbow parentheses
    Plug 'junegunn/rainbow_parentheses.vim'
    " FZF & vim-rooter
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " startify
    Plug 'mhinz/vim-startify'
    " Git integration
    "Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Sneak
    Plug 'justinmk/vim-sneak'
    " vim-commentary
    Plug 'tpope/vim-commentary'
    " vim-which-keys
    Plug 'liuchengxu/vim-which-key'
    " float term
    Plug 'voldikss/vim-floaterm'
    " vim-snippets
    Plug 'honza/vim-snippets'
    " vim-codi-with-virtual-text
    Plug 'metakirby5/codi.vim'
    " nnn
    Plug 'mcchrish/nnn.vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" Restore-cursor | last-position-jump
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif
