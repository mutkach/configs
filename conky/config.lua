conky.config = {
    background = false,
    cpu_avg_samples = 2,
    no_buffers = true,
    out_to_console = true,
    out_to_x = false,
    own_window = false,
    update_interval = 1,
    short_units = true,
    total_run_times = 0,
    lua_load = "~/.config/conky/conky_functions.lua"
};



conky.text = [[

[
    {"full_text": "${lua conky_cut ${top name 1}} ${top cpu 1}%","color":"\#d6baff"}, 
    {"full_text": "WLAN:${addr wlan0}","color":"\#c1baff"},
    {"full_text": "VPN:${addr tun0}","color":"\#c1baff"},
    {"full_text": "VOL:${mixer}%", "color":"\#b1baff"},
    {"full_text": "BAT:${lua conky_battery ${battery}}%", "color":"\#a1baff"},
    {"full_text": "${time %A %Y-%m-%d}", "color":"\#91bbff"},
    {"full_text": "${time %H:%M}", "color":"\#91bbff"}
],

]];
