#!/bin/sh
W=$(noctalia msg wallpaper-get 2>/dev/null)
[ -f "$W" ] && ln -sf "$W" "$HOME/.config/startpage/wallpaper"
L="$HOME/.cache/noctalia/location.json"
[ -f "$L" ] && python3 -I -c "import json,sys;d=json.load(open(sys.argv[1]));print('window.LOC={lat:%.2f,lon:%.2f};'%(d['latitude'],d['longitude']))" "$L" > "$HOME/.config/startpage/location.js"
