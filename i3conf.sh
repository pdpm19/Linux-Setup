#!/bin/sh

# Use this after running i3 for the first time
# https://thevaluable.dev/i3-config-mouseless/

echo 'new_window 1pixel'  >>  ~/.config/i3/config
echo 'bindsym $mod+b exec google-chrome-stable' >>  ~/.config/i3/config
echo 'bindsym $mod+m exec arandr' >>  ~/.config/i3/config
echo 'bindsym $mod+c exec gnome-control-center' >>  ~/.config/i3/config
echo 'bindsym $mod+n exec nautilus' >>  ~/.config/i3/config

# Reboot to activate these keybinds
sudo reboot
