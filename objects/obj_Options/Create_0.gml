opciones = [
    {nombre: "Volumen", valor: 1, minimo: 0, maximo: 1, paso: 0.1, tipo: "deslizador"},
    {nombre: "Pantalla Completa", valor: window_get_fullscreen(), tipo: "interruptor"},
    {nombre: "Velocidad Texto", valor: 1, opciones: ["Lento", "Normal", "Rápido"], tipo: "selector"},
    {nombre: "Volver", tipo: "regresar"}
];

opcion_seleccionada = 0;
posicion_x = room_width/2;
posicion_y = room_height/3;
espaciado = 50;
escala = 1.0;
altura_onda = 5;
desplazamiento = 0;