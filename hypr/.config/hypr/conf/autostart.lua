hl.on("hyprland.start", function()
    hl.exec_cmd("sh -c 'dbus-update-activation-environment --systemd --all && systemctl --user reset-failed xdg-desktop-portal-hyprland; systemctl --user restart xdg-desktop-portal-hyprland'")
    hl.exec_cmd("systemctl --user start hyprland-session.target")

    hl.exec_cmd("noctalia")

    hl.exec_cmd("easyeffects --gapplication-service")
    hl.exec_cmd("~/.local/bin/hypr-minimize.sh")
    hl.exec_cmd("~/.local/bin/openrgb-sync-theme.sh --force")
end)
