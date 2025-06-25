// STEP EVENT de obj_dialogo
if (!cerrado && keyboard_check_pressed(vk_enter)) {
    if (paginaActual < array_length(paginas) - 1) {
        paginaActual += 1;
        buffer = scribble(paginas[paginaActual]).wrap(cuadroAncho - 10, cuadroAlto - 10);
    } else {
        cerrado = true;
        instance_destroy();
    }
}