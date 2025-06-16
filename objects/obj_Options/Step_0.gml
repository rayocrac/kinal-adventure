// Navegación hacia abajo
if (keyboard_check_pressed(vk_down)) {
    opcion_seleccionada = (opcion_seleccionada + 1) mod array_length(opciones);
    audio_play_sound(sndMovimiento, global.volumen, false);
}

// Navegación hacia arriba
if (keyboard_check_pressed(vk_up)) {
    opcion_seleccionada = (opcion_seleccionada - 1 + array_length(opciones)) mod array_length(opciones);
    audio_play_sound(sndMovimiento, global.volumen, false);
}

// Ajuste de valores con izquierda/derecha
var ajuste = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
if (ajuste != 0) {
    var opcion = opciones[opcion_seleccionada];
    
    if (opcion.tipo == "deslizador") {
        // Actualizar valor del volumen
        opcion.valor = clamp(opcion.valor + (ajuste * opcion.paso), opcion.minimo, opcion.maximo);
        
        // Aplicar el volumen a todo el juego
        global.volumen = opcion.valor; // Guardar en variable global
        audio_master_gain(global.volumen); // Aplicar a todo el audio del juego
        
        // Reproducir sonido de feedback con el volumen actual
        audio_play_sound(sndMovimiento, global.volumen, false);
    }
    else if (opcion.tipo == "interruptor") {
        opcion.valor = !opcion.valor;
        window_set_fullscreen(opcion.valor);
        audio_play_sound(sndMovimiento, global.volumen, false);
    }
    else if (opcion.tipo == "selector") {
        opcion.valor = (opcion.valor + ajuste + array_length(opcion.opciones)) mod array_length(opcion.opciones);
        audio_play_sound(sndMovimiento, global.volumen, false);
    }
}

// Confirmar selección
if (keyboard_check_pressed(vk_enter)) {
    audio_play_sound(sndMovimiento, global.volumen, false);
    if (opciones[opcion_seleccionada].tipo == "regresar") {
		instance_activate_all()
		instance_deactivate_object(obj_Options);
		global.juegoPausado = false;
        instance_destroy();
    }
}

// Actualizar animación de texto
desplazamiento += 0.1;