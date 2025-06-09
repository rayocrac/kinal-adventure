var barra_ancho = 200;
var barra_alto = 16;
var porcentaje = estres / estres_max;

draw_set_color(c_black);
draw_rectangle(20, 50, 20 + barra_ancho, 50 + barra_alto, false);

draw_set_color(c_red);
draw_rectangle(20, 50, 20 + (barra_ancho * porcentaje), 50 + barra_alto, false);

draw_set_color(c_white);
draw_text(20, 70, "Estrés: " + string(estres) + " / " + string(estres_max));
