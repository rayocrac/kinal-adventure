if (puede_navegar) {
    if (keyboard_check_pressed(vk_right)) {
        indice_imagen = (indice_imagen + 1) mod total_imagenes;
        audio_play_sound(sndMenuMove, global.volumen, false);
        puede_navegar = false;
        tiempo_espera = 15;
    }
    
    if (keyboard_check_pressed(vk_left)) {
        indice_imagen = (indice_imagen - 1 + total_imagenes) mod total_imagenes;
        audio_play_sound(sndMenuMove, global.volumen, false);
        puede_navegar = false;
        tiempo_espera = 15;
    }
    
    if (keyboard_check_pressed(vk_escape)) {
        audio_play_sound(sndMenuMove, global.volumen, false);
        room_goto(mainMenu);
    }
} else {
    tiempo_espera--;
    if (tiempo_espera <= 0) {
        puede_navegar = true;
    }
}