if (mostrar == true) {
    contador++;

    if (contador mod velocidadTexto == 0) {
        letraActual++;
        mostrarTexto = string_copy(mensajeEnPantalla, 1, letraActual);

        if (letraActual >= string_length(mensajeEnPantalla)) {
            mostrarTexto = mensajeEnPantalla; // texto completo
            // Aquí podrías pausar o permitir cerrar diálogo
        }
    }
}
