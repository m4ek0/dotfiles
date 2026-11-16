local B = hl.bind
local D = hl.dsp
local function N(args) return D.exec_cmd("noctalia msg " .. args) end
local locked     = { locked = true }
local locked_rep = { locked = true, repeating = true }

B("SUPER + T",      D.exec_cmd("kitty"))
B("SUPER + Return", D.exec_cmd("kitty"))
B("SUPER + E",      D.exec_cmd("thunar"))
B("SUPER + M",      D.exec_cmd("kitty --class btop-float -e btop"))

B("SUPER + space",  N("panel-toggle launcher"))
B("SUPER + Period", N("panel-toggle launcher /emo"))
B("SUPER + V",      N("panel-toggle clipboard"))
B("SUPER + N",      N("panel-toggle control-center notifications"))
B("SUPER + X",      N("panel-toggle control-center"))
B("SUPER + comma",  N("settings-toggle"))
B("SUPER + Y",      N("panel-toggle wallpaper"))
B("SUPER + SHIFT + Y", N("wallpaper-next"))
B("SUPER + CTRL + Y",  N("wallpaper-previous"))
B("SUPER + TAB",    N("window-switcher"))
B("SUPER + ALT + L",      N("session lock"))
B("CTRL + ALT + Delete",  N("panel-toggle session"))

B("SUPER + SHIFT + S", N("screenshot-region"))
B("Print",             N("screenshot-region"))
B("CTRL + Print",      N("screenshot-fullscreen"))
B("ALT + Print",       D.exec_cmd("hyprshot -m window --clipboard-only"))
B("ALT + F10",         D.exec_cmd("pkill -SIGUSR1 -f '^gpu-screen-recorder'"))

B("XF86AudioRaiseVolume",  N("volume-up"),       locked_rep)
B("XF86AudioLowerVolume",  N("volume-down"),     locked_rep)
B("XF86AudioMute",         N("volume-mute"),     locked)
B("XF86AudioMicMute",      N("mic-mute"),        locked)
B("XF86AudioPlay",         N("media toggle"),    locked)
B("XF86AudioNext",         N("media next"),      locked)
B("XF86AudioPrev",         N("media previous"),  locked)
B("XF86MonBrightnessUp",   N("brightness-up"),   locked_rep)
B("XF86MonBrightnessDown", N("brightness-down"), locked_rep)

B("CTRL + SUPER + SHIFT + E", D.exit())
B("SUPER + SHIFT + P",        D.dpms({ action = "toggle" }))

B("SUPER + Q",         D.window.close())
B("SUPER + F",         D.window.fullscreen({ mode = "maximized",  action = "toggle" }))
B("SUPER + SHIFT + F", D.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
B("SUPER + SHIFT + T", D.window.float({ action = "toggle" }))
B("SUPER + R",         D.layout("togglesplit"))
B("SUPER + bracketleft",  D.layout("preselect l"))
B("SUPER + bracketright", D.layout("preselect r"))

B("SUPER + G", D.workspace.toggle_special("minimized"))

for key, dir in pairs({ left = "l", right = "r", up = "u", down = "d", H = "l", L = "r", K = "u", J = "d" }) do
    B("SUPER + " .. key,                D.focus({ direction = dir }))
    B("SUPER + SHIFT + " .. key,        D.window.move({ direction = dir }))
    B("SUPER + CTRL + " .. key,         D.focus({ monitor = dir }))
    B("SUPER + SHIFT + CTRL + " .. key, D.window.move({ monitor = dir }))
end
B("SUPER + Home", D.focus({ window = "first" }))
B("SUPER + End",  D.focus({ window = "last" }))

B("SUPER + minus",         D.window.resize({ x = -100, y = 0,    relative = true }), { repeating = true })
B("SUPER + equal",         D.window.resize({ x = 100,  y = 0,    relative = true }), { repeating = true })
B("SUPER + SHIFT + minus", D.window.resize({ x = 0,    y = -100, relative = true }), { repeating = true })
B("SUPER + SHIFT + equal", D.window.resize({ x = 0,    y = 100,  relative = true }), { repeating = true })
B("SUPER + mouse:272", D.window.drag(),   { mouse = true })
B("SUPER + mouse:273", D.window.resize(), { mouse = true })

for i = 1, 9 do
    B("SUPER + " .. i,         D.focus({ workspace = tostring(i) }))
    B("SUPER + SHIFT + " .. i, D.window.move({ workspace = tostring(i) }))
end
B("SUPER + U",          D.focus({ workspace = "e+1" }))
B("SUPER + I",          D.focus({ workspace = "e-1" }))
B("SUPER + Page_Down",  D.focus({ workspace = "e+1" }))
B("SUPER + Page_Up",    D.focus({ workspace = "e-1" }))
B("SUPER + mouse_down", D.focus({ workspace = "e+1" }))
B("SUPER + mouse_up",   D.focus({ workspace = "e-1" }))
B("SUPER + SHIFT + U",         D.window.move({ workspace = "e+1" }))
B("SUPER + SHIFT + I",         D.window.move({ workspace = "e-1" }))
B("SUPER + SHIFT + Page_Down", D.window.move({ workspace = "e+1" }))
B("SUPER + SHIFT + Page_Up",   D.window.move({ workspace = "e-1" }))
B("SUPER + CTRL + mouse_down", D.window.move({ workspace = "e+1" }))
B("SUPER + CTRL + mouse_up",   D.window.move({ workspace = "e-1" }))
