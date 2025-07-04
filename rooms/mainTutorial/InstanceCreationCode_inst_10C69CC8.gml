
global.cinematica = true;
global.cinematicaDialogo = self;
textoCompleto = false


textoTotal = "[speed,0.15][wobble]¿?  zzz... zzz... zzz...[/wobble][/speed] ¡Otra vez aqui?[/page]" +
"[pulse]El pasto te volvio a ganar la batalla...[/pulse][/page]" +
"[speed,0.18][wave]Te quedaste dormido en el campo de Kinal.[/wave][/speed][/page]" +
"[jitter]Lo peor es que parece que estas soñando...[/jitter][/page]" +
"[speed,0.2][shake]Pero no soñando bien, soñando raro.[/shake][/speed][/page]" +
"[wobble]Como si fueras protagonista de algo...[/wobble][/page]" +
"[speed,0.18][wave]...y aun asi no sabes ni que dia es hoy.[/wave][/speed][/page]" +
"[pulse]Mira.[/pulse] Alla al fondo. Esa [rainbow]ciudad.[/rainbow][/page]" +
"[rainbow]Llena de oportunidades, errores y trafico.[/rainbow][/page]" +
"[shake]Ese mundo te necesita.[/shake] [wave]Y esta esperando.[/wave][/page]" +
"[speed,0.18]Debes [c_aqua][wave]estudiar.[/wave][/color][/speed] Suena aburrido...[/page]" +
"[jitter]Pero tambien es el camino para mejorar.[/jitter][/page]" +
"[pulse]Para tener futuro. Para vivir sin miedo.[/pulse][/page]" +
"[wave]Para ser profesional el dia de manana.[/wave][/page]" +
"[c_red][speed,0.14][wobble]Y para poder pagar el internet.[/wobble][/color][/speed][/page]" +
"[blink]Despierta.[/blink] Tienes tareas que no se haran solas.[/page]" +
"[speed,0.18][shake][c_red]Y no, no puedes delegarlas a la IA.[/color][/shake][/speed][/page]" +
"[pulse][c_green]¿verdad?[/color][/pulse]         [wobble]Lastima.[/wobble][/page]" +
"[wave]Arriba, kinalerito. es el momento[/wave][/page]" +
"[rainbow][jitter]Este es el inicio de tu camino.[/jitter][/rainbow][/page]" +
"[pulse]Empezar es de muchos, terminar [speed,0.05]de pocos.[/speed][/pulse]";
textoActual = "";
paginas = string_split(textoTotal, "[/page]");

paginaActual = 0;
cerrado = false;

margenLados = 10;
margenAbajo = 10;
cuadroAlto = 60;
cuadroAncho = camera_get_view_width(view_camera[0]) - margenLados * 2;
posYNegativa = 105
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
global.velTypist = global.velTypist
opacidadTypist = 1
minPitch = 1
maxPitch = 3

	function cargarPagina(_paginaIndex) {
		textoActual = paginas[_paginaIndex];
		
		// Reiniciar typist para evitar sobrecarga
		typist = scribble_typist();
		typist.in(global.velTypist, opacidadTypist);
		typist.sound_per_char(sonidosPersonaje, minPitch, maxPitch, " ,-}¿{", 0.5);

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