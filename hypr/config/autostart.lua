hl.on("hyprland.start", function () 
  --hl.exec_cmd(terminal)
  --hl.exec_cmd("nm-applet")
  hl.exec_cmd("waybar")
  hl.exec_cmd("awww-daemon & awww img ~/Pictures/Wallpaper/wallhaven-k7d8j7_2560x1440")
  hl.exec_cmd("swaync")
end)

