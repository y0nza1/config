# y0nza1's .basrc file
# Last updated: 2024-02-18

# echo Yo yo yo.

teal=$(tput setaf 122);
lteal=$(tput setaf 123);
red=$(tput setaf 160);
white=$(tput setaf 255);
bold=$(tput bold);
reset=$(tput sgr0);


PS1="\[${bold}\]\n"; # bold for prompt
PS1+="\[${teal}\]\u"; # user color
PS1+="\[${white}\]@"; # @ color
PS1+="\[${lteal}\]\h"; # host color
PS1+="\[${lteal}\] \w"; # filepath directory color
PS1+="\n"; # line break
PS1+="\[${lteal}\]\W"; # basename directory color
PS1+="\[${white}\] $ >> \[${reset}\]"; # $ and reset color/bold

export PS1; 

# Special Characters:
# \h    the hostname up to the first .
# \n    newline
# \s    the name of the shell
# \t    the current time in 24-hour format
# \u    the username of the current user
# \w    the current working directory
# \W    the basename of the current working directory

# Colors: Look up "256 color charts".
# Reset colors with $(tput sgr0).

# Escape characters:
# Use these to fix weird cursor behavior.
# \[    before
# \]    after
$()
