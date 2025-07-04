
var resultado = scrCrearDialogoNPC(false,obj_dialogo_NPC,
    dialogos,
    dialogoActual,
    repetirTodo,
    repetirTexto,
    indiceTextoRepetir,
    yaHablo,
    distancia_activar,
    x,
    y,
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