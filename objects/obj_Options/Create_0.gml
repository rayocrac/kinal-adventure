// Forzar inclusión de recursos usados en otras rooms
opcionesMostrar = false
fntUno = fntDaydream;
fntDos = fntBach;
sndMovimiento = sndMenuMove;

opciones = [
    {nombre: "Volumen", valor: 1, minimo: 0, maximo: 1, paso: 0.1, tipo: "deslizador"},
    {nombre: "Velocidad Texto", valor: 1, opciones: ["Lento", "Normal", "Rápido"], tipo: "selector"},
    {nombre: "Volver", tipo: "regresar"}
];

// Solo se define si aún no existe
if (!variable_global_exists("volumen")) {
    global.volumen = 1; // volumen máximo o el que desees
    audio_master_gain(global.volumen); // aplica el volumen inicial
}
if (!variable_global_exists("velTypist")) {
    global.velTypist = 0.3; //si no se toca nada la velocidad del typist es la normal.
}

opcion_seleccionada = 0;
posicion_x = room_width/2;
posicion_y = room_height/3;
espaciado = 50;
escala = 1.0;
altura_onda = 5;
desplazamiento = 0;

