# Verbosity and settings that you pretty much just always are going to want.
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	mkd="mkdir -pv" \
	yt="youtube-dl --add-metadata -i" \
	yta="yt -x -f bestaudio/best" \
	ffmpeg="ffmpeg -hide_banner"

# Colorize commands when possible.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	# ccat="highlight --out-format=ansi --syntax=zsh"

# These common commands are just too long! Abbreviate them.
alias \
	ka="killall" \
	g="git" \
	# trem="transmission-remote" \
	# YT="youtube-viewer" \
	sdn="sudo shutdown -h now" \
	f="$FILE" \
	e="$EDITOR" \
	v="$EDITOR" \
	# p="sudo pacman" \
	# xi="sudo xbps-install" \
	# xr="sudo xbps-remove -R" \
	# xq="xbps-query" \
	z="zathura"

alias \
	magit="nvim -c MagitOnly" \
	ref="shortcuts >/dev/null; source ${XDG_CONFIG_HOME:-$HOME/.config}/shortcutrc ; source ${XDG_CONFIG_HOME:-$HOME/.config}/zshnameddirrc" \
	weath="less -S ${XDG_DATA_HOME:-$HOME/.local/share}/weatherreport" \
	tmux="tmux -f ${XDG_CONFIG_HOME:-$HOME/.config}/tmux/tmux.conf" \

alias lg='lazygit'
alias gpu_watch="watch -n -1 nvidia-smi"
alias omz="nvim ~/.oh-my-zsh"
alias j="z"
# alias cd="z"
# alias f="zi"
alias nv="nvim ."
# use this with media keys later
#alias play="spotify play"
#alias pause="spotify pause"
#alias next="spotify next"
#alias prev="spotify prev"
alias gp='git add . && git commit -m "auto push" && git push'
#alias blog_post='cd ~/Repos/blog && git add . && git commit -m "blog post" && git push && cd -'
alias config='ranger ~/.config'
alias repos='ranger ~/repositories'
alias zrc='nvim ~/.zshrc'
alias zs='source ~/.zshrc'
#alias ls='exa --color=always --group-directories-first'
#alias plague='curl https://corona-stats.online/states/us'
#alias p='sudo pacman -S'
#alias y='yay -S'
alias fshoot_full='flameshot full -p ~/Pictures/screenshots'
#alias kill_vbox="kill $(ps -e | grep VirtualBox | awk '{ print $1 }')"
alias wallpapers="sxiv ~/Pictures/Wallpapers"
alias list_systemctl="systemctl list-unit-files --state=enabled"
alias kill_jupyter="killall jupyter-lab"
# alias set_python_path="source set_python_path"
# alias cat="ccat"
alias greeter="dm-tool switch-to-greeter"
alias small_text="sed -i 's/size: 22.0/size: 15.0/g' ~/.config/alacritty/alacritty.yml"
alias big_text="sed -i 's/size: 15.0/size: 22.0/g' ~/.config/alacritty/alacritty.yml"
alias logout="dm-tool switch-to-greeter"
#alias i3-logout="i3-msg exit"
alias monitors="xrandr -q | grep " connected" | cut -d ' ' -f1"
alias random_background="feh --bg-fill --randomize ~/Pictures/Wallpapers/*"
alias sk="screenkey -s small --scr 1"
alias skk="killall screenkey"
# alias vim="vim -u ~/.config/vim/vimrc"
alias code="code-insiders"
alias cht="curl cheat.sh/$1"
alias cmx='cmatrix -abs'
