//para inicializar el tiempo de expulsiion
tiempo = 0;
espera = 90; // cada 1.5 segundos

// Evento Step
tiempo += 1;
if (tiempo >= espera) {
    instance_create_layer(room_width, random_range(0, room_height), "inst_enemigo", obj_pruebaEstres);
    tiempo = 0;
}
