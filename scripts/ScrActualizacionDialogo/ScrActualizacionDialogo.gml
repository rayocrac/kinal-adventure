function scrActualizacionDialogo(_dialogo, 
_colorTextoNPC, 
_textoNPC, 
_colorCaja,
_tamanoCaja,
_yNegativa,
_yPositiva, 
_sprNPC,
_strngFuenteNPC, 
_boolInicioHabla, 
_velAnimado, 
_arraySonidos, 
_velTypist, 
_opcdTypist,
_pitchMinimo,
_pitchMaximo,
_textoOmitirSonido) {
	
    with (_dialogo) {

		textoCompleto= false;
		
		textoTotal = _textoNPC; 
		textoActual = "";
		paginas = string_split(textoTotal, "[/page]");
		paginaActual = 0
		
		cerrado = false;
		margenLados = 10;
		margenAbajo = 0;
		cuadroAlto = _tamanoCaja;
		cuadroAncho = camera_get_view_width(view_camera[0]) - margenLados * 2;
		posYNegativa = _yNegativa
		posYPositiva = _yPositiva;
		
		colorCajaDialogo = _colorCaja;
		fuentePersonaje = _strngFuenteNPC;
		colorTexto = _colorTextoNPC;
		personajeHablando = _sprNPC;
		subImagen = 0;
		
		hablando = _boolInicioHabla;
		animacionVel = _velAnimado;
		contadorAnim = 0;
		sonidosPersonaje = _arraySonidos;

		velocidadTypist = _velTypist
		opacidadTypist = _opcdTypist
		minPitch = _pitchMinimo
		maxPitch = _pitchMaximo
		textoOmitirSonido = _textoOmitirSonido

	function cargarPagina(_paginaIndex) {
		textoActual = paginas[_paginaIndex];
		
		// Reiniciar typist para evitar sobrecarga
		typist = scribble_typist();
		typist.in(velocidadTypist, opacidadTypist);
		typist.sound_per_char(sonidosPersonaje, minPitch, maxPitch, textoOmitirSonido, 1);

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

	}
}