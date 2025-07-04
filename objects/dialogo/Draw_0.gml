// Evento Draw

// Obtén la posición y tamaño de la vista actual
var vx = view_xport[0];
var vy = view_yport[0];
var vw = view_wport[0];
var vh = view_hport[0];

// Tamaño y posición del cuadro de diálogo relativo a la vista
var box_width = vw * 0.9;
var box_height = vh * 0.25;
var box_x = vx + (vw - box_width) / 2;
var box_y = vy + vh - box_height - 20;

// Dibuja el fondo del cuadro de diálogo
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false); // Relleno
draw_set_alpha(1);

// Dibuja el texto del diálogo
if (!dialogo_terminado) {
    draw_set_color(c_white);
    // draw_set_font(fnt_dialogo); // Descomenta si tienes una fuente personalizada
    var texto = string_copy(dialogos[dialogo_actual], 1, letras_mostradas);
    draw_text(box_x + 20, box_y + 20, texto);
}