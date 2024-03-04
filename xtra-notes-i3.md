If you don't have a config, you can just run i3-config-wizard.
Also: https://github.com/fosslife/awesome-ricing to find cool stuff to add/spiff up your config.

## Understanding Shit
- `bindsym` is binding system shortcuts, basically.
- Use `exec_always` to have something execute whenever i3 is refreshed. For example, `feh --bg-scale` being your wallpaper. 
- If you want to use icons, reference the "AwesomeFont cheat sheet" and copy paste the actual icon into the string literal.
- Regarding COLORS, reference the documentation for the syntax: `<colorclass> <border> <background> <text> <indicator>`.
- You *could* make your own bar shell script (which I tried), but i3blocks is a nice way to grab information that might otherwise be cumbersome to write, like volume status, memory usage, etc.

## General practices
- Whenever you make changes in your config, hit Mod+Shift+r in order to refresh i3.
- If you need to mess with monitor settings, use `xandr --help`. Messing with monitor settings is annoying through CLI, see `arandr`.
- When entering a class for a file/program you want to execute in a container, use a tool called `xprop` to select it when it's open, then copy the last entry in quotes for `WM_CLASS(STRING)`. 

## Changes from Defaults
Mainly referring to keybind changes. I'm probably not gonna catch all of them, refer to the default config file included in the folder if stuff goes horribly wrong.
- Opening terminal: Changed to mod+a.
- Killing focused window: I hate Mod+Shift+q. Using mod+Shift+a. 
- Opening dmenu: Changed to Mod+Return
- Focus directions: vim bindings (hjkl) rather than defaults (jkl;)
- Split h and v: Mod+Shift+h and Mod+Shift+v, respectively
- Audio: My media keys are broken... soo. Yeah. Uses uiop.

## Dependencies
I might not catch all of these either...
- PulseAudio: use pactl to control volume and stuff
- feh: lightweight image viewer
    - To preview what an image will look like as your wallpaper, navigate to the directory containing the image and run `feh --bg-scale image.jpg`. 
- Awesome-Font: grab .zip from the repository and unzip, then copy the `.ttf` files under `webfonts` into ~/.fonts
- Nerd Font, FantasqueSansMNerd: easily google'able, unzip and move `.ttf` files in the same manner as the awesome font
- lxappearance: apply changes to theme, also how you access gtk files necessary for that to happen
- brightnessctl: allows you to change monitor brightness; acquired via `sudo apt-get update -y`, then `sudo apt-get install -y`, then `sudo apt-get install -y brightnessctl`.
- i3blocks: `sudo apt-get install i3 blocks`; provides easier way to grab information and customize the i3bar. Grab the config from /etc/i3blocks and then redirect the path to your ~/.config/i3/ directory.
    - There's somewhat weird behavior with i3blocks and PulseAudio, so specify this command in your config file: `command=/usr/share/i3blocks/volume 5 pulse` and also be sure to do the same thing in the `etc/i3blocks`. (Run `./volume 5 pulse` there.)
    - It also isn't set to update by default, so set the interval to 1, so your volume is reflected accurately the second after you change it.
- betterlockscreen: https://github.com/betterlockscreen/betterlockscreen, follow directions carefully.
    - In order to allow betterlockscreen to work after system suspend, be sure to follow instructions and **comment out** the default i3lock exec command in the config file.


## Needs
- need to get picom to enable transparency in alacritty :(
