if (keyboard_check_pressed(vk_down)) {
    selected_option = (selected_option + 1) mod array_length(menu_options);
    audio_play_sound(sndMenuMove, 1, false);
}

if (keyboard_check_pressed(vk_up)) {
    selected_option = (selected_option - 1 + array_length(menu_options)) mod array_length(menu_options);
    audio_play_sound(sndMenuMove, 1, false);
}

if (keyboard_check_pressed(vk_enter)) {
    audio_play_sound(sndMenuMove, 1, false);
    switch(selected_option) {
        case 0: // Jugar
            room_goto(mainRpg);
            break;
		case 1: // Menu Opciones
			room_goto(mainOpciones);
			break;
		case 3: // Salir
			game_end();
			break;
    }
}

blink_timer++;
wiggle_timer += wiggle_speed;