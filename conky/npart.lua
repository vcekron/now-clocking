conky.config = {
	alignment = 'bottom_left',
	background = false,
	border_inner_margin = 0,
	border_outer_margin = 0,
	border_width = 0,
	cpu_avg_samples = 2,
	double_buffer = true,
	draw_borders = false,
	draw_graph_borders = false,
	draw_outline = false,
	draw_shades = false,
	gap_x = 50,
	gap_y = 125,
	max_user_text = 10000,
	minimum_width = 125,
	maximum_width = 125,
	net_avg_samples = 2,
	no_buffers = true,
	override_utf8_locale = true,
--Setup Windows
	own_window = true,
	own_window_argb_visual = true,
	own_window_argb_value = 0,
	own_window_transparent = true,
	draw_blended = false,
	own_window_class = 'conky-semi',
	own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
	own_window_type = 'desktop',
	pad_percents = 2,
	short_units = true,
	stippled_borders = 3,
	text_buffer_size = 8000,
	total_run_times = 0,
	update_interval = 1,
	uppercase = true,
	own_window_colour = '#000000',
};

conky.text = [[
${if_running spotify}${exec sh "$HOME/.config/conky/now-clocking/scripts/spotifyart"}
${color #fff}
${image ~/Pictures/npart.jpg -p 0,0 -s 125x125 -n}
${font Gotham Book:pixelsize=9}                            ${voffset 43}
${endif}

${if_running cmus}
${exec sh "$HOME/.config/conky/now-clocking/scripts/cmusart"}
${color #fff}
${image ~/Pictures/npart2.jpg -p 0,0 -s 125x125 -n}
${font Gotham Book:pixelsize=9}                            ${voffset 43}
${endif}
]];
