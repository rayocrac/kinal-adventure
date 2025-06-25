/// Inicializa el diálogo con el texto dado (usa [/page] para saltos de página)
function ScrActualizacionDialogo(_obj, _texto) {
    with (_obj) {
        texto = _texto;
        paginas = string_split(texto, "[/page]");
        pagina_actual = 0;
        cerrado = false;
        cuadroAncho = camera_get_view_width(view_camera[0]) - margenLados * 2;
        buffer = scribble(paginas[pagina_actual]).wrap(cuadroAncho - 10, cuadroAlto - 10);
    }
}