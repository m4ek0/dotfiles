hl.monitor({ output = "desc:Dell Inc. DELL SE2426HG 8TMZDC4",       mode = "1920x1080@240.000", position = "1920x559", scale = 1, vrr = 2 })
hl.monitor({ output = "desc:Acer Technologies VG240Y S 0x2150D4EE", mode = "1920x1080@165.003", position = "0x0",      scale = 1, vrr = 0 })

hl.workspace_rule({ workspace = "1", monitor = "desc:Dell Inc. DELL SE2426HG 8TMZDC4",       default = true })
hl.workspace_rule({ workspace = "2", monitor = "desc:Acer Technologies VG240Y S 0x2150D4EE", default = true })

hl.device({ name = "opentabletdriver-virtual-artist-tablet", output = "DP-1" })
