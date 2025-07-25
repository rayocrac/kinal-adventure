function scrCrearDialogoNPC(abrirAlcolisionar, tipoDialogo,
    dialogos, 
    dialogo_actual, 
    repetirTodo, 
    repetirTexto, 
    indiceTextoRepetir,
    yaHablo, 
    distancia_activar, 
    posXNPC, 
    posYNPC,
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

    var condicion_abrir = abrirAlcolisionar || keyboard_check_pressed(vk_enter);

    if (!yaHablo && distance_to_object(obj_kinalero) < distancia_activar && condicion_abrir && !instance_exists(tipoDialogo)) {

        // Si es obj_dialogo → tratar como string
        if (tipoDialogo == obj_dialogo) {
            texto_a_mostrar = dialogos;

        // Si es obj_dialogo_NPC → tratar como array
        } else if (tipoDialogo == obj_dialogo_NPC) {
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
        }

        if (texto_a_mostrar != "") {
            var idDialogo = instance_create_layer(posXNPC, posYNPC, "dialogos", tipoDialogo);
			idDialogo.depth = -1000;

            scrActualizacionDialogo(
                idDialogo, colorTextoNPC, texto_a_mostrar, colorCaja,
                tamanoCaja, yNegativa, yPositiva, sprNPC, strngFuenteNPC, boolInicioHabla, velAnimado,
                arraySonidos, velTypist, opcdTypist, pitchMinimo, pitchMaximo, textoOmitirSonido
            );
            yaHablo = true;
        }
    }

    // Avance del diálogo solo si es tipo NPC
    if (tipoDialogo == obj_dialogo_NPC && yaHablo && !instance_exists(tipoDialogo)) {
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
