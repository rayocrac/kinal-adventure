// STEP EVENT de obj_dialogo
if (!cerrado && keyboard_check_pressed(vk_enter)) {
    if (pagina_actual < array_length(paginas) - 1) {
        pagina_actual += 1;
        buffer = scribble(paginas[pagina_actual]).wrap(cuadroAncho - 10, cuadroAlto - 10);
    } else {
        cerrado = true;
        instance_destroy();
    }
}