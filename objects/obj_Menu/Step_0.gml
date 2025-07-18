// Control del menú
if (keyboard_check_pressed(vk_down)) {
    opcion_seleccionada = (opcion_seleccionada + 1) mod array_length(opciones_menu);
    audio_play_sound(sndMenuMove, 1, false);
}

if (keyboard_check_pressed(vk_up)) {
    opcion_seleccionada = (opcion_seleccionada - 1 + array_length(opciones_menu)) mod array_length(opciones_menu);
    audio_play_sound(sndMenuMove, 1, false);
}

if (keyboard_check_pressed(vk_enter)) {
    audio_play_sound(sndMenuMove, 1, false);
    switch(opcion_seleccionada) {
        case 0: // Jugar
            room_goto(mainTutorial);
            break;
        case 1: // Menú Opciones
		room_goto(mainOpciones)
            break;
        case 3: // Salir
            game_end();
            break;
    }
}

// Actualizar temporizadores
temporizador_parpadeo++;
temporizador_ondulacion += velocidad_ondulacion;

// Actualizar efecto de texto
desplazamiento_caracter += 0.1;