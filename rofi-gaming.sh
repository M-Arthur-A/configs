#!/bin/bash
selected=$(echo -e "steam\0icon\x1f/home/arthur/.local/share/lutris/runtime/icons/hicolor/64x64/apps/steam.png
lutris\0icon\x1f/home/arthur/.local/share/lutris/runtime/icons/hicolor/scalable/apps/lutris.svg
bottles\0icon\x1f/usr/share/icons/hicolor/scalable/apps/com.usebottles.bottles.svg" | rofi -dmenu -p "🎮")
exec gamemoderun $selected
