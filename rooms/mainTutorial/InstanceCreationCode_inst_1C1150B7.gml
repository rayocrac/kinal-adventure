texto = "no te habia visto ahi... sabes";
paginas = string_split(texto, "[/page]");

paginaActual = 0;
cerrado = false;

margenLados = 10;
margenAbajo = 10;
cuadroAlto = 50;
cuadroAncho = camera_get_view_width(view_camera[0]) - margenLados * 2;

colorCajaDialogo = 9;
personajeHablando = sprConsejeroHablando;
subImagen = 0;
hablando = true;
animacionVel = 3;
contadorAnim = 0;

sonidosPersonaje = [sndConsejeroHablaUno];
typist = scribble_typist();
typist.in(0.3, 1);
typist.sound_per_char(sonidosPersonaje,1,5," .,-+?%$#&!*/",0.5);

// Avanza la animación del personaje por cada letra escrita
typist.function_per_char(function(_element, _position, _typist) {
    if (!_typist.get_skip()) {
        contadorAnim += 1;
        if (contadorAnim >= animacionVel) {
            contadorAnim = 0;
            subImagen += 1;

            if (subImagen >= sprite_get_number(personajeHablando)) {
                subImagen = 0;
            }
        }
    }
});

// Cuando se termina de escribir, se deja al personaje con la boca cerrada
typist.function_on_complete(function(_element, _typist) {
    subImagen = 0;
    hablando = false;
});

// Crear el buffer inicial con el primer bloque de texto
buffer = scribble(paginas[paginaActual]).wrap(cuadroAncho - 25, cuadroAlto, typist);


