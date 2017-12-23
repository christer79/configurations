#!/bin/sh

#OFFICE 2 EXTERNAL MONITORS
xrandr --output DP-2-1 --mode 1920x1200 --pos 0x0 --rotate normal --primary \
       --output DP-2-2 --mode 1920x1200 --pos 1920x0 --rotate normal \
       --output DP-2-3 --off \
       --output eDP-1 --mode 1600x900 --pos 3840x540 --rotate normal \
       --output HDMI-3 --off \
       --output HDMI-2 --off \
       --output DP-2 --off
