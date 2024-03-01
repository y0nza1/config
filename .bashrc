# y0nza1's .bashrc file
# Last updated: 2024-02-18

# echo Yo yo yo.

# Colors: Look up "256 color charts".
# Reset colors with $(tput sgr0).
bold=$(tput bold);
reset=$(tput sgr0);

black=$(tput setaf 0);
blue=$(tput setaf 123);
cyan=$(tput setaf 122);
green=$(tput setaf 49);
orange=$(tput setaf 166);
red=$(tput setaf 160);
white=$(tput setaf 255);
yellow=$(tput setaf 220);


PS1="\[${bold}\]\n"; # bold for prompt
PS1+="\[${cyan}\]\u"; # user color
PS1+="\[${white}\]@"; # @ color
PS1+="\[${blue}\]\h"; # host color
PS1+="\[${blue}\] \w"; # filepath directory color
PS1+="\n"; # line break
PS1+="\[${blue}\]\W"; # basename directory color
PS1+="\[${cyan}\] $";
PS1+="\[${white} >> \[${reset}\]"; # $ and reset color/bold
tput sgr0

export PS1; 

# Special Characters:
# \h    the hostname up to the first .
# \n    newline
# \s    the name of the shell
# \t    the current time in 24-hour format
# \u    the username of the current user
# \w    the current working directory
# \W    the basename of the current working directory


# Escape characters:
# Use these to fix weird cursor behavior.
# \[    before
# \]    after

# Launch sway on login:
if [ "$tty" = "/dev/tty1" ] ; then
    # Environment variables
    export QT_QPA_PLATFORM=wayland
    export MOZ_ENABLE_WAYLAND=1
    export MOZ_WEBRENDER=1
    export XDG_SESSION_TYPE=wayland
    export XDG_CURRENT_DESKTOP=sway
    exec sway
fi

