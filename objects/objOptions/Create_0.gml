options = [
    {name: "Volumen", value: 1, min: 0, max: 1, step: 0.1, type: "slider"},
    {name: "Pantalla Completa", value: window_get_fullscreen(), type: "toggle"},
    {name: "Velocidad Texto", value: 1, options: ["Lento", "Normal", "Rápido"], type: "selector"},
    {name: "Volver", type: "back"}
];

selected_option = 0;
menu_x = room_width/2;
menu_y = room_height/3;
option_spacing = 50;
opt_scale = 1.0;
wave_height = 5;
char_offset = 0;