

if (!cerrado && keyboard_check_pressed(vk_enter)) {
    
    if (!textoCompleto) {
        // Si aún está escribiendo, mostrar todo instantáneamente
        typist.skip(true);

        subImagen = 0;
        hablando = false;

    } else if (paginaActual < array_length(paginas) - 1) {
        // Ya terminó: pasar de página
        paginaActual += 1;
        cargarPagina(paginaActual);

        subImagen = 0;
        contadorAnim = 0;

    } else {
        // Diálogo finalizado
        cerrado = true;
    }
}

if(cerrado){
	instance_destroy();
	
}
