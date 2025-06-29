if (!yaHablo && distance_to_object(obj_kinalero) < 10) {
    if (keyboard_check_pressed(vk_enter) && !instance_exists(obj_dialogo_NPC)) {
        var idDialogo = instance_create_layer(x, y, "balas", obj_dialogo_NPC);
        
        scrActualizacionDialogo(
            idDialogo,
            "Hola [wave]jugador[/wave], esto es la primera página.[/page]Esto es la [rainbow]segunda[/rainbow] página.[/page]¡Y esta es la [wiggle]tercera[/wiggle] página!",
            // colorCajaDialogo
			9,
		    // spritePersonaje
            sprConsejeroHablando,
			// subImagenNo (imagen inicial)
            0,
			// booleanInicioHabla (empieza hablando)
            true,
			// velAnimado (velocidad animación)
            3,
			// arraySonidos
            [sndConsejeroHablaUno],
			// velTypist (velocidad aparicion del texto)
            0.3,
			// opacidadTypist
            1,
			 // textoOmitirSonido (caracteres sin sonido)
            " aiu.,-+?%$#&!*/"
        );
        
        yaHablo = true;
    }
}
