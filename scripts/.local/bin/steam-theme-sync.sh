#!/bin/sh
F="$HOME/.local/share/Steam/millennium/themes/Material-Theme/css/main/colors/matugen.css"
[ -f "$F" ] || exit 0
P=$(grep -o -- '--md-sys-color-primary: #[0-9a-fA-F]\{6\}' "$F" | head -1 | grep -o '#.*')
[ -n "$P" ] || exit 0
H=$(python3 -I -c "import colorsys,sys;h=sys.argv[1].lstrip('#');r,g,b=(int(h[i:i+2],16)/255 for i in (0,2,4));print(round(colorsys.rgb_to_hls(r,g,b)[0]*360))" "$P")
sed -i "s/--hue-rotate: [0-9]*deg;/--hue-rotate: ${H}deg;/" "$F"
