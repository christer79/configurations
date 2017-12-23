#!/bin/sh


layout=$1
case $layout in
office)
  # OFFICE 2 EXTERNAL MONITORS
  xrandr --output DP-2-1 --mode 1920x1200 --pos 0x0 --rotate normal --primary \
         --output DP-2-2 --mode 1920x1200 --pos 1920x0 --rotate normal \
         --output eDP-1 --mode 1600x900 --pos 3840x540 --rotate normal \
;;
kitchen)
  # HOME EXTRA MONITOR
  xrandr --output eDP-1 --mode 1600x900 --pos 0x660 --rotate normal --primary \
         --output DP-1 --off \
	 --output DP-2 --mode 1920x1080 --pos 1600x0 --rotate normal \
         --output HDMI-1 --off \
         --output HDMI-2 --off
  ;;
anira) 
  ;;
laptop)
  # LAPTOP
  xrandr --output DP-2 --mode 1920x1080 --pos 1600x0 --rotate normal --primary

  # LAPTOP ONLY
  ;;
*)
  # DEFAULT
  ;;
esac
