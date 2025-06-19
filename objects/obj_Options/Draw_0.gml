// Variables de vista
var view_x = view_xview[0];
var view_y = view_yview[0];
var view_w = view_wview[0];
var view_h = view_hview[0];

// Tamaño de pantalla
var screen_w = display_get_width();
var screen_h = display_get_height();

// Escala para convertir room->pantalla
var escala_x = screen_w / view_w;
var escala_y = screen_h / view_h;

// Posición base en room donde quieres centrar menú (ejemplo: centro de la vista, a 1/3 altura)
var base_room_x = view_x + view_w / 2;
var base_room_y = view_y + view_h / 3;

// Traducir a pantalla para Draw GUI
var base_x = (base_room_x - view_x) * escala_x;
var base_y = (base_room_y - view_y) * escala_y;

// Parámetros menú
var espaciado = 50;
var escala = 1.0;
var altura_onda = 5;

// Fondo blanco
draw_set_color(c_white);
draw_rectangle(0, 0, screen_w, screen_h, false);

// Título centrado en pantalla (usando base_x)
draw_set_font(fntUno);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(base_x, base_y - espaciado * 2, "OPCIONES");

// Opciones
draw_set_font(fntUno);
draw_set_halign(fa_center);

for (var i = 0; i < array_length(opciones); i++) {
    var opcion = opciones[i];
    var pos_y = base_y + (i * espaciado);

    if (i == opcion_seleccionada) {
        draw_set_color(c_dkgray);
        var total_caracteres = string_length(opcion.nombre);
        var text_x = base_x - 150;

        for (var c = 0; c < total_caracteres; c++) {
            var caracter = string_char_at(opcion.nombre, c + 1);
            var char_x = text_x + c * 18 * escala;
            var onda_y = sin(desplazamiento * 2 + c * 1) * altura_onda;
            draw_text_transformed(char_x, pos_y + onda_y, caracter, escala, escala, 0);
        }

        // Controles interactivos
        switch (opcion.tipo) {
            case "deslizador":
                var ancho = 100;
                var slider_x = base_x + 50;
                var ancho_lleno = ancho * opcion.valor;

                draw_set_color(c_black);
                draw_rectangle(slider_x, pos_y - 2, slider_x + ancho, pos_y + 12, true);
                draw_set_color(c_blue);
                draw_rectangle(slider_x, pos_y - 2, slider_x + ancho_lleno, pos_y + 12, true);
                break;

            case "interruptor":
                var toggle_x = base_x + 100;
                draw_set_color(opcion.valor ? c_black : c_gray);
                draw_text(toggle_x, pos_y, opcion.valor ? "ON" : "OFF");
                break;

            case "selector":
                var selector_x = base_x + 100;
                draw_set_color(c_black);
                draw_text(selector_x, pos_y, "< " + opcion.opciones[opcion.valor] + " >");
                break;

            case "regresar":
                var back_x = base_x + 100;
                draw_set_color(c_black);
                draw_text(back_x, pos_y, "<-");
                break;
        }

    } else {
        draw_set_color(c_black);
        draw_text(base_x - 150, pos_y, opcion.nombre);

        switch (opcion.tipo) {
            case "deslizador":
                draw_text(base_x + 100, pos_y, string(round(opcion.valor * 100)) + "%");
                break;
            case "interruptor":
                draw_text(base_x + 100, pos_y, opcion.valor ? "ON" : "OFF");
                break;
            case "selector":
                draw_text(base_x + 100, pos_y, opcion.opciones[opcion.valor]);
                break;
            case "regresar":
                draw_text(base_x + 100, pos_y, "<-");
                break;
        }
    }
}

// Pie de página centrado abajo
draw_set_font(fntDos);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_text(view_get_camera(0) / 2, view * 0.9, "KINAL ADVENTURE CREW - v1.0");
