if (keyboard_check_pressed(vk_down)) {
    selected_option = (selected_option + 1) mod array_length(options);
    audio_play_sound(sndMenuMove, 1, false);
}

if (keyboard_check_pressed(vk_up)) {
    selected_option = (selected_option - 1 + array_length(options)) mod array_length(options);
    audio_play_sound(sndMenuMove, 1, false);
}

var adjust = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
if (adjust != 0) {
    var opt = options[selected_option];
    
    if (opt.type == "slider") {
        opt.value = clamp(opt.value + (adjust * opt.step), opt.min, opt.max);
        audio_play_sound(sndMenuMove, 1, false);
    }
    else if (opt.type == "toggle") {
        opt.value = !opt.value;
        window_set_fullscreen(opt.value);
    }
    else if (opt.type == "selector") {
        opt.value = (opt.value + adjust + array_length(opt.options)) mod array_length(opt.options);
    }
    
    audio_play_sound(sndMenuMove, 1, false);
}

if (keyboard_check_pressed(vk_enter)) {
    audio_play_sound(sndMenuMove, 1, false);
    if (options[selected_option].type == "back") {
        room_goto(rm_menu);
    }
}

// Actualizar animación
char_offset += 0.1;
