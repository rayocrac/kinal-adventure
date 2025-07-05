
// Título del juego
var titulo_x = room_width/2;
var titulo_y = room_height/4;
draw_set_font(fntDaydream);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(titulo_x, titulo_y, "KINAL ADVENTURE", c_black, c_black, c_black, c_black, 1);

// Opciones del menú
draw_set_font(fntDaydream);
draw_set_halign(fa_center); 

for (var i = 0; i < array_length(opciones_menu); i++) {
    var posicion_y = posicion_menu_y + (i * espaciado_opciones);
    var texto = opciones_menu[i];

    if (i == opcion_seleccionada) {
        draw_set_color(c_dkgray);
        var total_caracteres = string_length(texto);
        var ancho_texto = total_caracteres * 20 * escala_opcion;
        var base_x = posicion_menu_x - ancho_texto / 2 + 15;

        for (var c = 0; c < total_caracteres; c++) {
            var caracter = string_char_at(texto, c + 1);
            var posicion_x = base_x + c * 18 * escala_opcion;
            var onda_y = sin(desplazamiento_caracter * 2 + c * 1) * altura_onda;

            draw_text_transformed(posicion_x, posicion_y + onda_y, caracter, escala_opcion, escala_opcion, 0);
        }
    } else {
        draw_set_color(c_black);
        draw_text_color(posicion_menu_x, posicion_y, texto, c_black, c_black, c_black, c_black, 1);
    }
}

// Créditos
draw_set_font(fntBach);
draw_set_halign(fa_center);
draw_text(room_width/2, room_height/1.1, "KINAL ADVENTURE CREW - v1.0");
draw_set_halign(fa_center); 
