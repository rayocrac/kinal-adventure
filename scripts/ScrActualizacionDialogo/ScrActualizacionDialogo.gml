function scrActualizacionDialogo(dialogo, textoNPC, colorCaja, spritePersonaje, subImagenNo, boolInicioHabla, velAnimado, arraySonidos, velTypist, opacidadTypist, textoOmitirSonido) {
    with (dialogo) {
        texto = textoNPC;
        paginas = string_split(texto, "[/page]");
        paginaActual = 0;
        cerrado = false;
        margenLados = 10;
        margenAbajo = 10;
        cuadroAlto = 50;
        cuadroAncho = camera_get_view_width(view_camera[0]) - margenLados * 2;
        colorCajaDialogo = colorCaja;
        personajeHablando = spritePersonaje;
        subImagen = subImagenNo;
        hablando = boolInicioHabla;
        animacionVel = velAnimado;
        contadorAnim = 0;

        sonidosPersonaje = arraySonidos;
        typist = scribble_typist();
        typist.in(velTypist, opacidadTypist);
        typist.sound_per_char(sonidosPersonaje,1,5,textoOmitirSonido,0.5);


        buffer = scribble(paginas[paginaActual]).wrap(cuadroAncho - 25, cuadroAlto, typist);
    }
}
