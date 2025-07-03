if (!puzzle_active) {
    if (keyboard_check_pressed(ord("E"))) {
        puzzle_active = true;
        typed_text = "";
        current_word = words[irandom(array_length(words) - 1)];
        time_start = current_time;
        global.allow_move = false;  // Bloquear movimiento
    }
} else {
    var elapsed = (current_time - time_start) / 1000;
    var time_left = time_limit - elapsed;

    if (time_left <= 0) {
        show_message("¡Tiempo terminado! Fallaste el puzzle.");
        puzzle_active = false;
        global.allow_move = true;  // Desbloquear movimiento
    } else {
        // Solo permitir tipeo mientras el puzzle está activo
        var key = keyboard_lastchar;
        if (key != "") {
            var next_char = string_copy(current_word, string_length(typed_text) + 1, 1);
            if (key == next_char) {
                typed_text += key;
            }
        }
        if (typed_text == current_word) {
            show_message("¡Correcto! Puzzle resuelto.");
            puzzle_active = false;
            global.allow_move = true;  // Desbloquear movimiento
        }
    }
}
