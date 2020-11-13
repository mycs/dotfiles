source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

" Theme / Color scheme
" source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/papercolor.vim
" source $HOME/.config/nvim/themes/afterglow.vim
" source $HOME/.config/nvim/themes/space-vim-dark.vim

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/coc-extensions.vim

" Airline & airline themes
source $HOME/.config/nvim/themes/airline.vim

" ranger
source $HOME/.config/nvim/plug-config/rnvimr.vim

" Colorizer
luafile $HOME/.config/nvim/lua/plug-colorizer.lua

" Rainbow parentheses
source $HOME/.config/nvim/plug-config/rainbow.vim

" fzf
source $HOME/.config/nvim/plug-config/fzf.vim

" Startify
source $HOME/.config/nvim/plug-config/start-screen.vim

" sneak
source $HOME/.config/nvim/plug-config/sneak.vim

" vim-commentary
source $HOME/.config/nvim/plug-config/vim-commentary.vim

" which key
source $HOME/.config/nvim/keys/which-key.vim

" floterm
source $HOME/.config/nvim/plug-config/floaterm.vim

" codi
source $HOME/.config/nvim/plug-config/codi.vim

" nnn
source $HOME/.config/nvim/plug-config/nnn.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

" Automatically source vimrc on save.
autocmd! bufwritepost $MYVIMRC source $MYVIMRC
