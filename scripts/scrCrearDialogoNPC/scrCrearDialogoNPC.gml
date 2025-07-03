function scrCrearDialogoNPC(
    dialogos, 
	dialogo_actual, 
	repetirTodo, 
	repetirTexto, 
	indiceTextoRepetir,
    yaHablo, 
	distancia_activar, 
	posXNPC, 
	posYNPC,
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
) {
    var texto_a_mostrar = "";

    if (!yaHablo && distance_to_object(obj_kinalero) < distancia_activar && keyboard_check_pressed(vk_enter) && !instance_exists(obj_dialogo_NPC)) {
        if (dialogo_actual < array_length(dialogos)) {
            texto_a_mostrar = dialogos[dialogo_actual];
        } else if (repetirTodo) {
            dialogo_actual = 0;
            texto_a_mostrar = dialogos[dialogo_actual];
        } else if (repetirTexto) {
            texto_a_mostrar = dialogos[indiceTextoRepetir];
        } else {
            return {dialogo_actual: dialogo_actual, yaHablo: yaHablo};
        }

        if (texto_a_mostrar != "") {
            var idDialogo = instance_create_layer(x, y, "balas", obj_dialogo_NPC);
            scrActualizacionDialogo(
               idDialogo,esCinematica,fondoSiCinematica,colorTextoNPC,texto_a_mostrar,colorCaja,
			   tamanoCaja,yNegativa,yPositiva,sprNPC,strngFuenteNPC,boolInicioHabla,velAnimado,
			   arraySonidos,velTypist,opcdTypist,pitchMinimo,pitchMaximo,textoOmitirSonido
            );
            yaHablo = true;
        }
    }

    // Avance
    if (yaHablo && !instance_exists(obj_dialogo_NPC)) {
        yaHablo = false;
        if (dialogo_actual < array_length(dialogos) - 1) {
            dialogo_actual += 1;
        } else if (repetirTodo) {
            dialogo_actual = 0;
        } else if (!repetirTexto) {
            dialogo_actual += 1;
        } else if (repetirTexto) {
            dialogo_actual = array_length(dialogos);
        }
    }
    return {dialogo_actual: dialogo_actual, yaHablo: yaHablo};
}