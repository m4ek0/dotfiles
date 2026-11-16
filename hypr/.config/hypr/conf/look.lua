local ok, c = pcall(dofile, os.getenv("HOME") .. "/.config/hypr/conf/colors.lua")
if not ok or type(c) ~= "table" then
    c = { primary = "b9c5f0", tertiary = "e3bada", error = "ffb4ab",
          outline_variant = "45464e", shadow = "000000" }
end
local function rgba(hex, a) return "rgba(" .. hex .. (a or "ff") .. ")" end

hl.config({
    general = {
        gaps_in          = 2,
        gaps_out         = 6,
        border_size      = 1,
        extend_border_grab_area = 12,
        layout           = "dwindle",
        resize_on_border = true,
        allow_tearing    = true,
        col = {
            active_border   = { colors = { rgba(c.primary, "66"), rgba(c.tertiary, "66") }, angle = 45 },
            inactive_border = rgba(c.outline_variant, "44"),
        },
    },
    decoration = {
        rounding         = 12,
        rounding_power   = 2.5,
        active_opacity   = 1.0,
        inactive_opacity = 1.0,
        dim_inactive     = true,
        dim_strength     = 0.12,
        blur = {
            enabled    = true,
            size       = 8,
            passes     = 3,
            noise      = 0.02,
            contrast   = 1.0,
            brightness = 0.9,
            vibrancy   = 0.25,
            popups     = true,
        },
        shadow = {
            enabled      = true,
            range        = 10,
            render_power = 3,
            offset       = "0 2",
            color          = rgba(c.shadow, "40"),
            color_inactive = rgba(c.shadow, "1a"),
        },
    },
    group = {
        col = {
            border_active          = rgba(c.primary),
            border_inactive        = rgba(c.outline_variant, "88"),
            border_locked_active   = rgba(c.error),
            border_locked_inactive = rgba(c.outline_variant, "88"),
        },
    },
    misc = {
        disable_hyprland_logo    = true,
        disable_splash_rendering = true,
    },
    dwindle = {
        preserve_split = true,
    },
})
