// Evento Step
tiempo += 1;
if (tiempo >= espera) {
    instance_create_layer(room_width, random_range(0, room_height), "inst_enemigos", obj_pruebaEstres);
    tiempo = 0;
}
