global.cinematica = false
global.cinematicaDialogo = noone;
textoCompleto= false;

textoTotal = "texto generico aqui"; 
textoActual = "";
paginas = string_split(textoTotal, "[/page]");

paginaActual = 0;
cerrado = false;

margenLados = 10;
margenAbajo = 10;
cuadroAlto = 80;
cuadroAncho = camera_get_view_width(view_camera[0]) - margenLados * 2;
posYNegativa = 0
posYPositiva = 0;

colorCajaDialogo = 9;
fuentePersonaje = "fntConsejero";
escalaNPC = 1;
colorTexto = c_white;
personajeHablando = sprConsejeroHablando;
spriteFondoCinematica = sprDreamsCity
subImagen = 0;
hablando = true;
animacionVel = 3;
contadorAnim = 0;

sonidosPersonaje = [sndConsejeroHablaUno];
velTypist = global.velTypist;
opacidadTypist = 1
minPitch = 1
maxPitch = 3

	function cargarPagina(_paginaIndex) {
		textoActual = paginas[_paginaIndex];
		
		// Reiniciar typist para evitar sobrecarga
		typist = scribble_typist();
		typist.in(velTypist, opacidadTypist);
		typist.sound_per_char(sonidosPersonaje, minPitch, maxPitch, "", 1);

		// Animación por letra
		typist.function_per_char(function(_element, _position, _typist) {
			if (!_typist.get_skip()) {
				textoCompleto = false;
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

    // Al terminar el texto
		typist.function_on_complete(function(_element, _typist) {
			subImagen = 0;
			textoCompleto = true;
		});

		// Crear nuevo buffer limpio
		buffer = scribble(textoActual).starting_format(fuentePersonaje, colorTexto).wrap(cuadroAncho - 25, cuadroAlto, typist);
}

// Cargar paginas
cargarPagina(paginaActual);