if (!ya_hablo && distance_to_object(obj_kinalero) < 32) {
    if (keyboard_check_pressed(vk_enter) && !instance_exists(obj_dialogo_NPC)) {
        var id_dialogo = instance_create_layer(x, y, "Dialogos", obj_dialogo_NPC);
        ScrActualizacionDialogo(id_dialogo, 
            "Hola [wave]jugador[/wave], esto es la primera página.[/page]Esto es la [rainbow]segunda[/rainbow] página.[/page]¡Y esta es la [wiggle]tercera[/wiggle] página!"
        );
        ya_hablo = true; // ¡Nunca volverá a hablar!
    }
}