var resultado = scrCrearDialogoNPC(
    dialogos,
    dialogoActual,
    repetirTodo,
    repetirTexto,
    indiceTextoRepetir,
    yaHablo,
    distancia_activar,
    x,
    y,
    esCinematica,
    fondoSiCinematica,
    colorTextoNPC,
    colorCaja,
	tamanoCaja,
    yNegativa,
    yPositiva,
    sprNPC,
    strngFuenteNPC,
    boolInicioHabla,
    velAnimado,
    arraySonidos,
    velTypist,
    opcdTypist,
    pitchMinimo,
    pitchMaximo,
    textoOmitirSonido
);

dialogoActual = resultado.dialogo_actual;
yaHablo = resultado.yaHablo;