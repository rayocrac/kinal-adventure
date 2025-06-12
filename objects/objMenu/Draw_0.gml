// Título del juego
var title_x = room_width/2;
var title_y = room_height/4;
draw_set_font(fntDaydream);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(title_x, title_y, "KINAL ADVENTURE", c_black, c_black, c_black, c_black, 1);


draw_set_font(fntDaydream);
draw_set_halign(fa_center); 

for (var i = 0; i < array_length(menu_options); i++) {
    var y_pos = menu_y + (i * option_spacing);
    var text = menu_options[i];

    if (i == selected_option) {
        draw_set_color(c_dkgray);
        var total_chars = string_length(text);
        var text_width = total_chars * 20 * opt_scale;
        var base_x = menu_x - text_width / 2 + 15;

        for (var c = 0; c < total_chars; c++) {
            var char = string_char_at(text, c + 1);
            var char_x = base_x + c * 18 * opt_scale;
            var wave_y = sin(char_offset * 2 + c * 1) * wave_height;

            draw_text_transformed(char_x, y_pos + wave_y, char, opt_scale, opt_scale, 0);
        }
    } else {
        draw_set_color(c_black);
        draw_text_color(menu_x, y_pos, text, c_black, c_black, c_black, c_black, 1);
    }
}


draw_set_font(fntBach);
draw_set_halign(fa_center);
draw_text(room_width/2, room_height/1.1, "KINAL AVDENTURE CREW - v1.0");
draw_set_halign(fa_center); 