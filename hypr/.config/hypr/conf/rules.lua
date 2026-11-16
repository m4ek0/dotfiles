local W = hl.window_rule
local L = hl.layer_rule

W({ match = { class = "^(org\\.gnome\\.Calculator|blueman-manager|zoom|xdg-desktop-portal.*)$" }, float = true })
W({ match = { class = "^(thunar|Thunar|org\\.gnome\\.Nautilus)$" }, float = true, size = { "monitor_w*0.55", "monitor_h*0.6" }, center = true })
W({ match = { class = "^(thunar|Thunar)$", title = "^(File Operation Progress|Confirm to replace files|Rename.*)$" }, float = true, size = { 520, 180 }, center = true })
W({ match = { class = "^(firefox|zen)$", title = "^(Picture-in-Picture)$" }, float = true, pin = true })
W({ match = { class = "^(dev\\.)?(noctalia\\.Noctalia(\\.Settings)?)$" }, float = true })
W({ match = { class = "^(btop-float)$" }, float = true, size = { "monitor_w*0.6", "monitor_h*0.65" }, center = true })

local GLASS   = "0.88 0.82"
local CONTENT = "0.94 0.88"
W({ match = { class = "^(Spotify|spotify|spotifast)$" },                           opacity = GLASS })
W({ match = { class = "^(discord|Discord|vesktop|equibop)$" },                     opacity = GLASS })
W({ match = { class = "^(org\\.qbittorrent\\.qBittorrent)$" },                     opacity = GLASS })
W({ match = { class = "^(thunar|Thunar|org\\.gnome\\.Nautilus|org\\.kde\\.dolphin)$" }, opacity = GLASS })
W({ match = { class = "^(pavucontrol|org\\.pulseaudio\\.pavucontrol|com\\.saivert\\.pwvucontrol)$" }, opacity = GLASS })
W({ match = { class = "^(com\\.github\\.wwmm\\.easyeffects|blueman-manager|nm-connection-editor)$" }, opacity = GLASS })
W({ match = { class = "^(dev\\.)?(noctalia\\.Noctalia(\\.Settings)?)$" },               opacity = GLASS })
W({ match = { class = "^(zen|firefox)$" },                                         opacity = CONTENT })
W({ match = { class = "^(steam)$" },                                               opacity = CONTENT })
W({ match = { class = "^([Cc]ode|com\\.microsoft\\.VSCode|dev\\.zed\\.Zed)$" },     opacity = CONTENT })
W({ match = { class = "^(mpv|imv|org\\.kde\\.haruna)$" },                         opacity = "1.0 override 1.0 override" })

W({ match = { class = "^(steam)$", title = "^(notificationtoasts)" }, no_initial_focus = true, pin = true })

W({ match = { class = "^(gamescope)$" }, fullscreen = true })
W({ match = { class = "^(gamescope|steam_app_.*|osu!|.*osu.*|cs2)$" }, opacity = "1.0 override 1.0 override", no_blur = true })

L({
    match = { namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$" },
    blur = true,
    blur_popups = true,
    ignore_alpha = 0.5,
    no_anim = true,
})

