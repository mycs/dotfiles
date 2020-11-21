# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# export
export TF_FORCE_GPU_ALLOW_GROWTH=true
# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

export LOCATION='Houli'
#autoload -U colors && colors
export CLICOLOR=1
export FZF_DEFAULT_COMMAND='rg --files --hidden'
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
export MANPAGER='nvim +Man!'
export MANWIDTH=999

# fnm
export PATH=/home/$USER/.gem/ruby/2.7.0:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=/usr/lib/ruby/gems/2.7.0:$PATH
export PATH=$HOME/.local/bin/statusbar:$PATH
# eval "`fnm env --multi`"
# eval "$(zoxide init zsh)"
