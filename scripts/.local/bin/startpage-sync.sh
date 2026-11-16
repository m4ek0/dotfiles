#!/bin/sh
P="$HOME/.config/startpage/index.html"
W=$(noctalia msg wallpaper-get 2>/dev/null)
L="$HOME/.cache/noctalia/location.json"
[ -f "$P" ] || exit 0
python3 -I - "$P" "$W" "$L" <<'PY'
import base64, json, os, subprocess, sys
page, wall, loc = sys.argv[1:4]
s = open(page).read()
if os.path.isfile(wall):
    jpg = subprocess.run(["magick", wall, "-resize", "1280x", "-blur", "0x11.4", "-color-matrix", "1.1574 -0.1430 -0.0144 -0.0426 1.0570 -0.0144 -0.0426 -0.1430 1.1856", "-evaluate", "multiply", "0.6", "-quality", "85", "jpg:-"], capture_output=True).stdout
    s = s.replace("/*WALLPAPER*/", "data:image/jpeg;base64," + base64.b64encode(jpg).decode())
if os.path.isfile(loc):
    d = json.load(open(loc))
    s = s.replace("/*LOC*/", "window.LOC = {lat: %.2f, lon: %.2f};" % (d["latitude"], d["longitude"]))
open(page, "w").write(s)
PY
