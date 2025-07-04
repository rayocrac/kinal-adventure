if(opcionesMostrar){
	// Fondo blanco
draw_set_color(c_white);
draw_rectangle(fa_left, fa_left, display_get_width(), display_get_height(), false);


// Título
draw_set_font(fntUno);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(room_width/2, room_height/6, "OPCIONES", c_black, c_black, c_black, c_black, 1);

// Opciones del menú
draw_set_font(fntUno);
draw_set_halign(fa_center);

for (var i = 0; i < array_length(opciones); i++) {
    var opcion = opciones[i];
    var pos_y = posicion_y + (i * espaciado);
    
    if (i == opcion_seleccionada) {
        draw_set_color(c_dkgray);
        var total_caracteres = string_length(opcion.nombre);
        var base_x = posicion_x - 150;
        
        // Efecto de onda para texto seleccionado
        for (var c = 0; c < total_caracteres; c++) {
            var caracter = string_char_at(opcion.nombre, c + 1);
            var char_x = base_x + c * 18 * escala;
            var onda_y = sin(desplazamiento * 2 + c * 1) * altura_onda;
            draw_text_transformed(char_x, pos_y + onda_y, caracter, escala, escala, 0);
        }
        
        // Dibujar controles interactivos
        switch (opcion.tipo) {
            case "deslizador":
                var ancho = 100;
                var slider_x = posicion_x + 50;
                var ancho_lleno = ancho * opcion.valor;
                
                draw_set_color(c_black);
                draw_rectangle(slider_x, pos_y - 2, slider_x + ancho, pos_y + 12, true);
                draw_set_color(c_blue);
                draw_rectangle(slider_x, pos_y - 2, slider_x + ancho_lleno, pos_y + 12, true);
                break;
                
            case "selector":
                var selector_x = posicion_x + 100;
                draw_set_color(c_black);
                draw_text(selector_x, pos_y, "< " + opcion.opciones[opcion.valor] + " >");
                break;
                
            case "regresar":
                var back_x = posicion_x + 100;
                draw_set_color(c_black);
                draw_text(back_x, pos_y, "<-");
                break;
        }
    } else {
        // Opciones no seleccionadas
        draw_set_color(c_black);
        draw_text(posicion_x - 150, pos_y, opcion.nombre);
        
        // Mostrar valores actuales
        switch (opcion.tipo) {
            case "deslizador":
                draw_text(posicion_x + 100, pos_y, string(round(opcion.valor * 100)) + "%");
                break;
				
            case "selector":
                draw_text(posicion_x + 100, pos_y, opcion.opciones[opcion.valor]);
                break;
                
            case "regresar":
                draw_text(posicion_x + 100, pos_y, "<-");
                break;
        }
    }
}

// Pie de página (créditos)
draw_set_font(fntDos);
draw_set_halign(fa_center);
draw_text(room_width/2, room_height/1.1, "KINAL ADVENTURE CREW - v1.0");
}

