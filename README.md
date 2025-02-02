<!-- <p align="center"><img align="center" src="https://user-images.githubusercontent.com/67634565/123535664-dcf83700-d742-11eb-84ee-e0663dd167b5.png" width="320px"></p> -->

<img align="right" src="https://user-images.githubusercontent.com/67634565/125792404-8feb3087-2884-42c8-9432-024879a9b3fc.gif" width='210' >
<p >
 <img  src="https://visitor-badge.glitch.me/badge?page_id=umgbhalla/dotstow.visitor-badge" >  
 <img  alt="" src="https://img.shields.io/github/repo-size/umgbhalla/dotstow?style=flat&label=repo-size&color=fb9199&labelColor=1d212a"/>
 <!-- <img  alt="" src="https://img.shields.io/github/last-commit/umgbhalla/dotstow?color=fbdf90&label=updated&style=flat&labelColor=1d212a"/> -->
 <img  alt="" src="https://img.shields.io/github/package-json/v/umgbhalla/dotstow"/>
</p>

### install script is still wip <kbd>hehe</kbd>

<kbd>deps</kbd> git , <a href="https://www.youtube.com/watch?v=tkUllCAGs3c">GNU stow</a>, along with <a href="https://github.com/umgbhalla/dotstow#programs"> these</a> programs and <a href="https://github.com/wmutils/opt">wmutils opt</a> for double border  
<kbd>note</kbd> these files are tuned ony for a 14" 1920x1080 display

<details>
 <summary><kbd>suggested</kbd> </summary>
<ul>
 <li><a href="https://www.gnu.org/software/stow/manual/stow.html">Manpage Stow</a></li>
<li><a href="https://alexpearce.me/2016/02/managing-dotfiles-with-stow/">Managing dotfiles with GNU stow - Alex Pearce</a></li>
<li><a href="https://gruby.medium.com/dotfile-how-to-manage-and-sync-with-git-gnu-stow-6beada1529ea">dotfile, how to manage and sync with Git + GNU Stow </a></li>
 </ul>
</details>

<details>
    <summary><b>Installing</b></summary>
Clone into your <code>$HOME</code> directory  
  <br>

```bash
git clone https://github.com/umgbhalla/dotstow.git ~
```

Run `stow` to symlink everything or just select what you want

```bash
cd dotstow/themes/monterey && stow */  -t ~
```

<kbd>stow</kbd> Everything (<code>\*/</code> ignores the README or any <code>file</code>)  
 <kbd>flags</kbd> <code>-t ~</code> implies , target directory is <code>$HOME</code>

```bash
$ pwd
/
└ home
  └ umang
    └ dotstow
      └ base

stow zsh -t ~
# Just my zsh config
```

```bash
nvim -c ':PackerInstall' -c ':UpdateRemotePlugins' -c ':qall'
# install all nvim plugins and exit
```

</details>
<!-- Icon Theme | [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) -->
<!-- Gtk-theme | [Nordic-Gtk](https://www.gnome-look.org/p/1267246/) -->
<!-- Music Player | [Audacious-qt](https://audacious-media-player.org) -->
 
<details>
    <summary><b>Themes</b></summary>

|                                                                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| cr0nus                                                                                                                                                 |
| <p align="center"><img src="https://user-images.githubusercontent.com/67634565/140522097-77e30707-03d1-4a95-9c46-3842fa60de06.png" width="920px" ></p> |
| Moun-tain                                                                                                                                              |
| <p align="center"><img src="https://user-images.githubusercontent.com/67634565/137625699-cefbf345-1d0a-4199-a044-e509489c7e14.png" width="920px"></p>  |
| <p align="center"><img src="https://user-images.githubusercontent.com/67634565/137625704-422ccec7-ec93-484c-8bd1-7cb60b085063.png" width="920px"></p>  |
| Gruv-dark                                                                                                                                              |
| <p align="center"><img src="https://user-images.githubusercontent.com/67634565/130346655-1e8b8957-54de-4e16-99b4-0495c5d7389e.png" width="920px"></p>  |
| <p align="center"><img src="https://user-images.githubusercontent.com/67634565/131245686-7cdb2433-72c9-4ed9-a0aa-8da7e41100b3.png" width="920px"></p>  |
| Glass-green                                                                                                                                            |
| <p align="center"><img src="https://user-images.githubusercontent.com/67634565/124610237-f4939600-de8d-11eb-8469-1863f953359d.png" width="920px"></p>  |
| <p align="center"><img src="https://user-images.githubusercontent.com/67634565/126061920-2d44885f-2943-452c-86a6-3178d1e58599.png" width="920px"></p>  |
| Monterey                                                                                                                                               |
| <p align="center"><img src="https://user-images.githubusercontent.com/67634565/123525378-d12e5580-d6ed-11eb-9293-0c9e9cdd2221.png" width="920px" ></p> |

</details>

# Programs

|       Program       |                                                             Name                                                              |
| :-----------------: | :---------------------------------------------------------------------------------------------------------------------------: |
|    Window Manger    |                                         [bspwm](https://github.com/baskerville/bspwm)                                         |
|         Bar         |                                         [polybar](https://github.com/polybar/polybar)                                         |
|     Compositor      |                                      [picom-jonaburg](https://github.com/jonaburg/picom)                                      |
|      Launcher       |                                          [rofi](https://github.com/davatorium/rofi)                                           |
|  Wallpaper Setter   |                                              [feh](https://feh.finalrewind.org/)                                              |
|     Web Browser     |                                     [firefox](https://www.mozilla.org/en-US/firefox/new/)                                     |
|  Music Visualizer   |                                            [xava](https://github.com/nikp123/xava)                                            |
|     Lockscreen      |                                   [i3lock-color](https://github.com/Raymo111/i3lock-color)                                    |
|  Terminal Emulator  |                                      [Alacritty](https://github.com/alacritty/alacritty)                                      |
|        Shell        |                                                  [zsh](https://www.zsh.org)                                                   |
|       Prompt        |  [here](https://github.com/umgbhalla/dotstow/blob/b6ed8c21f614087bd7ab0b41162bc919aa776453/base/zsh/.config/zsh/prompt.zsh)   |
|     Code Editor     |                                 [neovim -> configs](https://github.com/umgbhalla/nvim-titan)                                  |
| Notification daemon |                                              [dunst](https://dunst-project.org/)                                              |
|     Scratch pad     |                                           [tdrop](https://github.com/noctuid/tdrop)                                           |
|        Fetch        |                                     [paleofetch](https://github.com/umgbhalla/paleofetch)                                     |
|    Login manager    |                                        [lightdm](https://github.com/canonical/lightdm)                                        |
|        music        |                                          [mpvc](https://github.com/lwilletts/mpvc/)                                           |
|        misc         | [hideIt.sh](http://giithub.com/tadly/hideIt.sh) , [exa](https://github.com/ogham/exa) , [bat](https://github.com/sharkdp/bat) |

<details>
    <summary><b>Detailed programs list</b></summary>

An updated list of all the programs I have installed, can be found <code><a href="https://github.com/umgbhalla/dotstow/blob/main/base/programs/program-list">here</a></code>
<br>

</details>

<details>
    <summary><b>Zsh plugins / manager </b></summary>
<code><a href="https://github.com/ohmyzsh/ohmyzsh">ohmyzsh</a></code>  
</br> 
<code><a href="https://github.com/Aloxaf/fzf-tab">fzf-tab</a></code>  
<br>
<code><a href="https://github.com/zsh-users/zsh-autosuggestions">zsh-autosuggestions</a></code>  
<br>
<code><a href="https://github.com/zsh-users/zsh-syntax-highlighting">zsh-syntax-highlighting</a></code>  
</details>

<details>
    <summary><b>Keybinds</b></summary>

| Binding                             | Functionality                                               |
| ----------------------------------- | ----------------------------------------------------------- |
| super + F1                          | locked                                                      |
| super + apostrophe                  | kitty                                                       |
| super + Next                        | discord follow                                              |
| super + Return                      | scratchpad right                                            |
| super + semicolon                   | scratchpad left                                             |
| super + backslash                   | tmux scratchpad top                                         |
| super + slash                       | tmux scratchpad bottom                                      |
| super + shift + Return              | terminal kitty                                              |
| super + e                           | Shortcuts                                                   |
| super + w                           | vivaldi-stable                                              |
| super + n                           | pcmanfm                                                     |
| super + d                           | dmenu_run                                                   |
| super + a                           | neovide                                                     |
| super + u                           | file uploader                                               |
| super + r                           | screen recorder                                             |
| super + b                           | polybar_toggle                                              |
| super + shift + k                   | tesseract scan                                              |
| super + shift + l                   | urls shortner                                               |
| super + space                       | program launcher                                            |
| alt + shift + e                     | rofimoji                                                    |
| alt + v                             | clipmenu                                                    |
| super + shift + h                   | keybindhelper                                               |
| super + shift + p                   | dotfiles rofi menu ; open in neovide                        |
| super + period                      | show open windows                                           |
| super + shift + d                   | dictionary                                                  |
| super + p                           | power-menu                                                  |
| super + shift + b                   | power on bluetooth                                          |
| super + shift + r                   | make sxhkd reload its configuration files:                  |
| super + {t,shift + t,s}             | set the window state                                        |
| super + f                           | toggle the window fullscreen                                |
| super + alt + {q,r}                 | quit/restart bspwm                                          |
| super + {\_,shift + }q              | close and kill                                              |
| super + m                           | alternate between the tiled and monocle layout              |
| super + g                           | swap the current node and the biggest window                |
| super + ctrl + {m,x,y,z}            | set the node flags                                          |
| super + comma                       | focus the node for the given path jump                      |
| super + {\_,shift + }c              | focus the next/previous window in the current desktop       |
| super + bracket{left,right}         | focus the next/previous desktop in the current monitor      |
| super + shift + bracket{left,right} | focus to next ore previous node                             |
| alt + {Tab, shift + Tab}            | focus the last node/desktop                                 |
| super + {grave,Tab}                 | focus the last node/desktop                                 |
| super + {o,i}                       | focus the older or newer node in the focus history          |
| super + {\_,shift + }{1-8,0}        | focus or send to the given desktop                          |
| super + ctrl + {h,j,k,l}            | preselect the direction                                     |
| super + ctrl + {1-9}                | preselect the ratio                                         |
| super + ctrl + space                | cancel the preselection for the focused node                |
| super + ctrl + shift + space        | cancel the preselection for the focused desktop             |
| super + alt + shift + {h,j,k,l}     | contract a window by moving one of its side inward          |
| super + {Up,Down,Left,Right}        | expand/contract a window by moving both of its side outward |
| ctrl + Print                        | anonym screenshot                                           |
| shift + Print                       | Screenshot to scliboard                                     |
| super+Print                         | Screenshots with gui                                        |
| super + shift + {Left , Right}      | music controls                                              |

to generate this use command below

```
#!/usr/bin/env bash
# Markdown sxhkd configuration for cheatsheet/documents.

SXHKD_CONF="$HOME/.config/sxhkd/sxhkdrc"
MD_NAME="Binding"
MD_VALUE="Functionality"

(
echo -e "|$MD_NAME\t # $MD_VALUE |";
echo -e "|--- | --- |";
awk '/^[a-z]/ && last {print "|" $0,"\t",last,"|"} {last=""} /^#/{last=$0}' "$SXHKD_CONF"
) | sed -e 's/# /| /' -e 's/^|/| /' | column -t -s $'\t'

```

script provided by <a href="https://github.com/MahdyMirzade">@MahdyMirzade</a>

</details>

<details>
    <summary><b>Config Credits </b></summary>
<a href="https://dynalist.io/d/xAvi97D_qNz1lJ-eKMlk3OM-#z=VqvnVl7tC5wuZDDhgZWj1Tu1">Ricing dynalist </a>
</details>

# license

![kopimi logo](https://gist.githubusercontent.com/xero/cbcd5c38b695004c848b73e5c1c0c779/raw/6b32899b0af238b17383d7a878a69a076139e72d/kopimi-sm.png)

all files and scripts in this repo are released [CC0](https://creativecommons.org/publicdomain/zero/1.0/) / [kopimi](https://kopimi.com)! in the spirit of _freedom of information_, i encourage you to fork, modify, change, share, or do whatever you like with this project! `^c^v`
