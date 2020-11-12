#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Keyboard Layout
setxkbmap us &

# Display Resolution
xrandr --mode 1280x800 &

# Stop screen from going blank
xset s off
xset -dpms
xset s noblank

# Compositor
picom -bf &

# add local binaries
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# Faster key repeat and delay
xset r rate 210 40

# Hide Cursor when typing
xbanish &

# Open flameshot on startup
flameshot &

# Wallpaper
feh --bg-fill --randomize ~/Pics/wallpapers/* &

# Save your eyes
#redshift & 
redshift-gtk & 

# Wallpaper
nitrogen --restore &

# fcitx Chinese input method
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

fcitx &

# Hide the mouse cursor whem it's not in use
unclutter &

#export PATH=$PATH:~/.scripts
export PATH=$PATH:~/.local/bin
#export PATH=$HOME/.miniconda/envs/jupyter-lab/bin:$PATH
export PATH=$PATH:$HOME/.scripts

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"

# Loop
#while true; do
#	dwm > /dev/null 2>&1
#done

# Execute DWM
exec dwm
