#!/usr/bin/env bash

p="/tmp/$(date +"%d-%m-%y-%M").png"
# c=$(echo -en "Window\0icon\x1fappointment-new\nSelection\0icon\x1fimage-crop\nScreen\0icon\x1fvideo-display\n" \
# 	| rofi -dmenu -theme screenshot -p "")
# sleep 0.2

# case $c in
#   "Window")
#     import -window $(xwininfo | grep -Po "Window id: \K\w+") $p
#     ;;
#   "Selection")
#     import $p 
#     ;;
#   "Screen")
   maim -u -o $p
    # ;;
  # *)
    # exit
    # ;;
# esac

ssf $p

xclip -selection clipboard -target image/png -i $p


notify-send "Screenshot copied to clipboard!"

