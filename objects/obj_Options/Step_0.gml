if(room_get_name(room) == "mainOpciones"){
	opcionesMostrar = true
}

if(opcionesMostrar){
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
   else if (opcion.tipo == "selector") {
    opcion.valor = (opcion.valor + ajuste + array_length(opcion.opciones)) mod array_length(opcion.opciones);
    audio_play_sound(sndMovimiento, global.volumen, false);
    switch(opcion.valor) {
        case 0: global.velTypist = 0.1; break; // Lento
        case 1: global.velTypist = 0.3;  break; // Normal
        case 2: global.velTypist = 0.6;  break; // Rapido
    }
}
}

// Confirmar selección
if (keyboard_check_pressed(vk_enter)) {
    audio_play_sound(sndMovimiento, global.volumen, false);
    if (opciones[opcion_seleccionada].tipo == "regresar") {
		opcionesMostrar = false;
		room_goto(mainMenu)
		
    }
}

// Actualizar animación de texto
desplazamiento += 0.1;
} else{}