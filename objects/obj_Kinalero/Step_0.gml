var move_speed = 2;

// Movimiento horizontal
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    x += move_speed;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    x -= move_speed;
}

// Movimiento vertical
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    y -= move_speed;
}
if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    y += move_speed;
}

// Verifica colisión con objetos estresantes
if (place_meeting(x, y, obj_pruebaEstres)) {
    estres += 10; // Aumenta estrés al tocar
}

// Evita que el estrés pase del máximo
if (estres > estres_max) {
    estres = estres_max;
}

// Si llega al máximo de estrés, se activa el game over
if (estres >= estres_max && !game_over) {
    game_over = true;
    
    // Muestra el mensaje y espera a que el jugador haga clic en Aceptar
    show_message("¡Game Over por estrés!");
    
    // Reinicia la sala actual
    room_restart();
}

