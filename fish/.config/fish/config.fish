source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
    set -l prev (stty size 2>/dev/null)
    set -l stable 0
    for i in (seq 30)
        sleep 0.02
        set -l cur (stty size 2>/dev/null)
        if test "$cur" = "$prev"
            set stable (math $stable + 1)
            test $stable -ge 3; and break
        else
            set stable 0
            set prev $cur
        end
    end
    clear
    fastfetch
end

starship init fish | source
zoxide init fish | source
