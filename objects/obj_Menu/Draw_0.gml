
for (var i = 0; i < array_length(options); i++) {
    var y_pos = 150 + i * opt_spacing;
    var opt_color = (i == current_opt) ? c_yellow : c_white;
    var opt_scale = (i == current_opt) ? 1.2 : 1.0;
    var pulse = abs(sin(char_offset + i * 0.5));
    
    draw_set_font(fntDaydream);
    draw_set_color(merge_color(opt_color, c_black, 0.2 * pulse));
    
    var text = options[i];
    for (var c = 0; c < string_length(text); c++) {
        var char_x = opt_x + c * 20 * opt_scale;
        var wave_y = sin(char_offset * 2 + c * 0.5) * wave_height;
        draw_text_transformed(char_x, y_pos + wave_y, 
            string_char_at(text, c + 1),
            opt_scale, opt_scale,
            0
        );
    }
    
    if (i == current_opt) {
        var icon_x = opt_x - 40 + sin(char_offset * 3) * 5;
        draw_sprite_ext(spr_cursor, 0, 
            icon_x, y_pos + 10,
            1 + pulse * 0.1, 1 + pulse * 0.1,
            0, c_white, 1
        );
    }
}


draw_set_font(fntThirteenPixelFont);
draw_set_alpha(abs(sin(char_offset * 0.5)) * 0.5 + 0.5);
draw_text(opt_x, room_height - 40, "2025 KINAL ADVENTURE CREW - PRESIONA ENTER");
draw_set_alpha(1);

draw_sprite_ext(
    sprTitle, 0, room_width/2, 60, 0.5, 0.5, 0, c_white, 1 );

