# Add scripts to path
export PATH="$PATH:$HOME/.local/bin/"

# Defaults
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

# Home folder cleanup
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export ZDOTDIR="$HOME/.config/zsh"

# Turn off system bell
# xset -b

# Start an X environment
# To remain logged in after logging out of an X environment
# use startx instead of exec startx
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#  exec startx
  startx
fi
