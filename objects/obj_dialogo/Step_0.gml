if ((cerrado!= true) && (keyboard_check_pressed(vk_enter))) {
    if (paginaActual < array_length(paginas) - 1) {
        paginaActual += 1;

        buffer = scribble(paginas[paginaActual]).wrap(cuadroAncho -25, cuadroAlto, typist);

        hablando = true;
        subImagen = 0;
        contadorAnim = 0;
    } else {
        cerrado = true;
    }
}
