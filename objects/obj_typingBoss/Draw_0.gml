draw_set_color(c_black);

if (puzzle_active) {
    var elapsed = (current_time - time_start) / 1000;
    var time_left = max(0, time_limit - elapsed);

    // Fondo semitransparente: rectángulo dentro de la ventana
    draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(80, 140, 560, 340, false); // caja más pequeña y centrada
    draw_set_alpha(1);

    // Texto en blanco centrado horizontalmente
    draw_set_color(c_white);
    var cx = room_width / 2;

    // Texto con alineación manual usando string_width
    draw_text(cx - string_width("Escribe la palabra:") / 2, 160, "Escribe la palabra:");
    draw_text(cx - string_width(current_word) / 2, 200, current_word);
    draw_text(cx - string_width("Tu texto: " + typed_text) / 2, 240, "Tu texto: " + typed_text);
    draw_text(cx - string_width("Tiempo restante: " + string(floor(time_left)) + " seg") / 2, 280, "Tiempo restante: " + string(floor(time_left)) + " seg");

} else {
    draw_text(50, 50, "Presiona E para activar el puzzle de typing");
}
