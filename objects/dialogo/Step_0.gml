// Evento Step

if (!dialogo_terminado) {
    // Avanza las letras poco a poco
    if (letras_mostradas < string_length(dialogos[dialogo_actual])) {
        letras_mostradas += velocidad_texto;
    } else {
        // Espera input para avanzar
        if (keyboard_check_pressed(vk_space)) {
            dialogo_actual += 1;
            if (dialogo_actual < array_length_1d(dialogos)) {
                letras_mostradas = 0;
            } else {
                dialogo_terminado = true;
            }
        }
    }
}