conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,

    -- Positioning
    alignment = 'bottom_left',
    gap_x = 95,
    gap_y = -12,
    minimum_width = 1200,
    maximum_width = 1200,
    minimum_height = 200,

    -- Draw settings
    double_buffer = true,
    draw_shades = false,
    draw_blended = false,

    -- Compositor settings
    own_window = true,
    own_window_argb_visual = true,
    own_window_argb_value = 0,
    own_window_transparent = true,
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    own_window_type = 'desktop',

    -- Text settings
    uppercase = false,
    use_xft = true,
    override_utf8_locale = true
};

conky.text = [[
${if_running spotify}
${color #fff}${font Gotham:style=bold:pixelsize=30}           ${font Gotham:style=bold:pixelsize=20}${exec playerctl -p spotify metadata title}${font Gotham:style=bold:pixelsize=10}
${color #fff}${font Gotham Book:pixelsize=30}           ${font Gotham Book:pixelsize=20}${exec playerctl -p spotify metadata artist}${font Gotham Book:pixelsize=33}
${color #fff}${font Gotham Book:pixelsize=30}           ${font Gotham Book:pixelsize=20}${exec playerctl -p spotify metadata album}

${else}${if_match "" != "${exec playerctl -p vlc status}"}
${color #fff}${font Gotham:style=bold:pixelsize=30}           ${font Gotham:style=bold:pixelsize=20}${exec playerctl -p vlc metadata title}${font Gotham:style=bold:pixelsize=10}
${color #fff}${font Gotham Book:pixelsize=30}           ${font Gotham Book:pixelsize=20}${exec playerctl -p vlc metadata artist}${font Gotham Book:pixelsize=33}
${color #fff}${font Gotham Book:pixelsize=30}           ${font Gotham Book:pixelsize=20}${exec playerctl -p vlc metadata album}

${else}${if_running cmus}
${color #fff}${font Gotham:style=bold:pixelsize=30}           ${font Gotham:style=bold:pixelsize=20}${exec cmus-remote -Q 2>/dev/null | grep 'tag artist' | cut -d " " -f 3-}${font Gotham:style=bold:pixelsize=10}
${color #fff}${font Gotham:style=bold:pixelsize=30}           ${font Gotham Book:pixelsize=20}${exec cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3- }${font Gotham Book:pixelsize=33}
${color #fff}${font Gotham Book:pixelsize=30}           ${font Gotham Book:pixelsize=20}${exec cmus-remote -Q 2>/dev/null | grep album | cut -d " " -f 3-}

${endif}
${endif}
${endif}
]];
