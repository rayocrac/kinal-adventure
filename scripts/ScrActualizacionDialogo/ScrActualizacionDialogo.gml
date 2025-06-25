/// Inicializa el diálogo con el texto dado (usa [/page] para saltos de página)
function scrActualizacionDialogo(obj, textoNPC) {
    with (obj) {
        texto = textoNPC;
        paginas = string_split(texto, "[/page]");
        paginaActual = 0;
        cerrado = false;
        cuadroAncho = camera_get_view_width(view_camera[0]) - margenLados * 2;
        buffer = scribble(paginas[paginaActual]).wrap(cuadroAncho - 10, cuadroAlto - 10);
    }
}