# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd

# Disable CapsLock
setxkbmap -option ctrl:nocaps
