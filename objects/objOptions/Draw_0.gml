draw_set_color(c_white);
draw_rectangle(0, 0, room_width, room_height, false);

// Título
draw_set_font(fntDaydream);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(room_width/2, room_height/6, "OPCIONES", c_black, c_black, c_black, c_black, 1);

// Opciones
draw_set_font(fntDaydream);
draw_set_halign(fa_center);

for (var i = 0; i < array_length(options); i++) {
    var opt = options[i];
    var y_pos = menu_y + (i * option_spacing);
    
    if (i == selected_option) {
        draw_set_color(c_dkgray);
        var total_chars = string_length(opt.name);
        var base_x = menu_x - 150;
        
        // Dibujar nombre con efecto de onda
        for (var c = 0; c < total_chars; c++) {
            var char = string_char_at(opt.name, c + 1);
            var char_x = base_x + c * 18 * opt_scale;
            var wave_y = sin(char_offset * 2 + c * 1) * wave_height;
            draw_text_transformed(char_x, y_pos + wave_y, char, opt_scale, opt_scale, 0);
        }
        
        // Dibujar control
        switch (opt.type) {
            case "slider":
                var slider_width = 100;
                var slider_x = menu_x + 50;
                var fill_width = slider_width * opt.value;
                
                draw_set_color(c_black);
                draw_rectangle(slider_x, y_pos - 2, slider_x + slider_width, y_pos + 12, true);
                draw_set_color(c_gray);
                draw_rectangle(slider_x, y_pos - 2, slider_x + fill_width, y_pos + 12, true);
                break;
                
            case "toggle":
                var toggle_x = menu_x + 100;
                draw_set_color(opt.value ? c_black : c_gray);
                draw_text(toggle_x, y_pos, opt.value ? "ON" : "OFF");
                break;
                
            case "selector":
                var selector_x = menu_x + 100;
                draw_set_color(c_black);
                draw_text(selector_x, y_pos, "< " + opt.options[opt.value] + " >");
                break;
                
            case "back":
                var back_x = menu_x + 100;
                draw_set_color(c_black);
                draw_text(back_x, y_pos, "<-");
                break;
        }
    } else {
        draw_set_color(c_black);
        draw_text(menu_x - 150, y_pos, opt.name);
        
        // Dibujar valores no seleccionados
        switch (opt.type) {
            case "slider":
                draw_text(menu_x + 100, y_pos, string(round(opt.value * 100)) + "%");
                break;
                
            case "toggle":
                draw_text(menu_x + 100, y_pos, opt.value ? "ON" : "OFF");
                break;
                
            case "selector":
                draw_text(menu_x + 100, y_pos, opt.options[opt.value]);
                break;
                
            case "back":
                draw_text(menu_x + 100, y_pos, "<-");
                break;
        }
    }
}

// Créditos
draw_set_font(fntBach);
draw_set_halign(fa_center);
draw_text(room_width/2, room_height/1.1, "KINAL ADVENTURE CREW - v1.0");