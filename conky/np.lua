conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,

    -- Positioning
    alignment = 'bottom_left',
    gap_x = 75,
    gap_y = -32,
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
${if_match "" != "${exec playerctl -p spotify status}"}\
${voffset 25}\
${offset 95}${font Liberation:style=bold:pixelsize=16}${exec playerctl -p spotify metadata title}${voffset 5}
${offset 95}${font Liberation:pixelsize=16}${exec playerctl -p spotify metadata artist}${voffset 40}
${offset 95}${exec playerctl -p spotify metadata album}

${else}${if_match "" != "${exec playerctl -p vlc status}"}\
${voffset 25}\
${offset 95}${font Liberation:style=bold:pixelsize=16}${exec playerctl -p vlc metadata title}${voffset 5}
${offset 95}${font Liberation:pixelsize=16}${exec playerctl -p vlc metadata artist}${voffset 40}
${offset 95}${exec playerctl -p vlc metadata album}

${else}${if_match "" != "${exec playerctl -p cmus status}"}\
${voffset 25}\
${offset 95}${font Liberation:style=bold:pixelsize=16}${exec cmus-remote -Q 2>/dev/null | grep 'tag artist' | cut -d " " -f 3-}${voffset 5}
${offset 95}${font Liberation:pixelsize=16}${exec cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3-}${voffset 40}
${offset 95}${exec cmus-remote -Q 2>/dev/null | grep album | cut -d " " -f 3-}

${endif}
${endif}
${endif}
]];
