hl.config({
    input = {
        kb_layout          = "",
        numlock_by_default = true,
        follow_mouse       = 0,
        accel_profile      = "flat",
        sensitivity        = 0.0,
        force_no_accel     = true,
        touchpad = {
            tap_to_click   = true,
            natural_scroll = true,
        },
    },
    cursor = {
        inactive_timeout = 4,
    },
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
