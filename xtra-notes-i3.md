If you don't have a config, you can just run i3-config-wizard.

## Understanding Shit
- `bindsym` is binding system shortcuts, basically.
- Use `exec_always` to have something execute whenever i3 is refreshed. For example, `feh --bg-scale` being your wallpaper. 
- If you want to use icons, reference the "AwesomeFont cheat sheet" and copy paste the actual icon into the string literal.
- Regarding COLORS, reference the documentation for the syntax: `<colorclass> <border> <background> <text> <indicator>`.

## General practices
- Whenever you make changes in your config, hit Mod+Shift+r in order to refresh i3.
- If you need to mess with monitor settings, use `xandr --help`. Messing with monitor settings is annoying through CLI, see `arandr`.
- When entering a class for a file/program you want to execute in a container, use a tool called `xprop` to select it when it's open, then copy the last entry in quotes for `WM_CLASS(STRING)`. 

## Changes from Defaults
Mainly referring to keybind changes. I'm probably not gonna catch all of them, refer to the default config file included in the folder if stuff goes horribly wrong.
- Killing focused window: I hate Mod+Shift+q. Changed to Mod+leftbracket.
- Opening terminal: Changed to Mod+rightbracket
- Opening dmenu: Changed to Mod+Return
- Focus directions: vim bindings (hjkl) rather than defaults (jkl;)
- Split h and v: Mod+Shift+h and Mod+Shift+v, respectively
- Audio: My media keys are broken... soo. Yeah. Uses uiop.

## Dependencies
- PulseAudio: use pactl to control volume and stuff
- feh: lightweight image viewer
    - To preview what an image will look like as your wallpaper, navigate to the directory containing the image and run `feh --bg-scale image.jpg`. 
- Awesome-Font: grab .zip from the repository and unzip, then copy the `.ttf` files under `webfonts` into ~/.fonts
- Nerd Font, FantasqueSansMNerd: easily google'able, unzip and move `.ttf` files in the same manner as the awesome font
- lxappearance: apply changes to theme, also how you access gtk files necessary for that to happen

## Needs
- need to get picom to enable transparency in alacritty :(
