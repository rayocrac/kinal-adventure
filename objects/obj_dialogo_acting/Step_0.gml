	if (c){ instance_destroy(self)}
	
if (instance_exists( obj_dialogo) || instance_exists(obj_dialogo_NPC)){exit} else{
// Crear el sistema de diálogo, sea que se cumpla o no la condición
var resultado = scrCrearDialogoNPC(
    false,                 // abrirAlColisionar
    obj_dialogo_NPC,       // objeto que maneja el diálogo
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

// Actualizar los datos después de crear el diálogo
dialogoActual = resultado.dialogo_actual;
yaHablo = resultado.yaHablo;
}