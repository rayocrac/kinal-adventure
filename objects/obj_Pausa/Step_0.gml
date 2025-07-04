if (keyboard_check_pressed(vk_escape) && !global.cinematica) {
    global.pausa = !global.pausa;
    global.preDibujo = !global.preDibujo;
}

if (global.pausa) {
    audio_pause_all();
    instance_deactivate_all(true); // Desactiva todas las instancias
    instance_activate_object(self); // Activa solo esta instancia (para control de pausa)
} else {
    if (surface_exists(pausaCapa)) {
        surface_free(pausaCapa);
    }
    instance_activate_all();
    audio_resume_all();
}