if (menu_active) {

    var move_input = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
    if (move_input != 0) {
        current_opt = (current_opt + move_input + array_length(options)) % array_length(options);
        audio_play_sound(snd_select, 0, false);
    }
    

    if (keyboard_check_pressed(vk_enter)) {
        menu_active = false;
        audio_play_sound(snd_confirm, 0, false);
        

        instance_create_layer(x, y, "Effects", obj_menu_transition);
    }
}

char_offset += wave_speed;
