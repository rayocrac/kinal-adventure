if (!yaHablo && distance_to_object(obj_kinalero) < 10) {
    if (keyboard_check_pressed(vk_enter) && !instance_exists(obj_dialogo_NPC)) {
        var idDialogo = instance_create_layer(x, y, "balas", obj_dialogo_NPC);
        scrActualizacionDialogo(idDialogo, 
            "Hola [wave]jugador[/wave], esto es la primera página.[/page]Esto es la [rainbow]segunda[/rainbow] página.[/page]¡Y esta es la [wiggle]tercera[/wiggle] página!"
        );
        yaHablo = true; // ¡Nunca volverá a hablar!
    }
}