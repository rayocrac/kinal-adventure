texto = " "
texto ="[/page][blink]Despierta.[/blink] las tareas que no se haran solas.[/page]" +
"[speed,0.23][shake][c_red]Y no, no puedes delegarlas a la IA.[/color][/shake][/speed][/page]" +
"[pulse]¿verdad?[/pulse] [wobble] Las[speed,0.23]tima.[/speed][/wobble][/page]" +
"[wave]Arriba, kinalerito. Es el momento.[/wave][/page]" +
"[rainbow][jitter]Este es el inicio de tu camino.[/jitter][/rainbow][/page]" +
"[pulse]Empezar es de muchos, terminar [speed,0.15]de pocos.[/speed][/pulse][/page]"


paginas = string_split(texto, "[/page]");

paginaActual = 0;
cerrado = false;

margenLados = 10;
margenAbajo = 10;
cuadroAlto = 50;
cuadroAncho = camera_get_view_width(view_camera[0]) - margenLados * 2;
colorCajaDialogo = 9;
fuentePersonaje = "fntConsejero"
colorTexto = c_white;
personajeHablando = sprConsejeroHablando;
subImagen = 0;
hablando = true;
animacionVel = 3;
contadorAnim = 0;

sonidosPersonaje = [sndConsejeroHablaUno];
typist = scribble_typist();
typist.in(0.3, 1);
typist.sound_per_char(sonidosPersonaje,1,3," ,-+?%$#&!*/",0.5);
buffer = scribble(paginas[paginaActual]).wrap(cuadroAncho -25, cuadroAlto, typist);
 
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
buffer = scribble(paginas[paginaActual]).starting_format(fuentePersonaje,colorTexto).wrap(cuadroAncho - 25, cuadroAlto, typist);
