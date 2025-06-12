draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(make_color_rgb(30, 30, 120));
draw_rectangle(0, 0, room_width, room_height, true);

// Título del juego
var title_x = room_width/2;
var title_y = room_height/4;
draw_set_font(fntDaydream);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(title_x, title_y, "KINAL ADVENTURE", c_white, c_white, c_white, c_white, 1);


draw_set_font(fntDaydream);
for (var i = 0; i < array_length(menu_options); i++) {
    var y_pos = menu_y + (i * option_spacing);
    
    var wiggle_offset = (i == selected_option) ? sin(wiggle_timer) * wiggle_amount : 0;
    

    if (i == selected_option && blink_timer mod blink_speed < blink_speed/2) {
        draw_text_color(menu_x + wiggle_offset, y_pos, menu_options[i], c_yellow, c_yellow, c_yellow, c_yellow, 1);
    } else {
        draw_text_color(menu_x + wiggle_offset, y_pos, menu_options[i], c_white, c_white, c_white, c_white, 1);
    }
}

draw_set_font(fntBach);
draw_text(room_width - 20, room_height - 20, "KINAL AVDENTURE CREW - v1.0");
draw_set_halign(fa_center);