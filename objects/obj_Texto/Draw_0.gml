// Obtiene la cámara activa (generalmente la 0)
var cam = view_camera[0];

// Coordenada X de la esquina superior izquierda de la cámara
var viewX = camera_get_view_x(cam);
// Coordenada Y de la esquina superior izquierda de la cámara
var viewY = camera_get_view_y(cam);

// Ancho visible de la cámara
var viewW = camera_get_view_width(cam);
// Alto visible de la cámara
var viewH = camera_get_view_height(cam);

// Margen lateral (izquierda y derecha)
var marginSides = 10;
// Margen inferior
var marginBottom = 10;

// Ancho del cuadro de texto adaptado al ancho de la cámara menos márgenes
var boxW = viewW - marginSides * 2;
// Alto fijo del cuadro de texto
var boxH = 120;

// Posición X (inicio del margen izquierdo)www
var boxX = viewX + marginSides;
// Posición Y (pegado al borde inferior)
var boxY = viewY + viewH - boxH - marginBottom;

// Fondo del cuadro (negro, semi-transparente)
draw_set_color(c_black);
draw_set_alpha(0.75);
draw_roundrect(boxX, boxY, boxX + boxW, boxY + boxH, false);

// Borde/blanco sobre el fondo, completamente opaco
draw_set_alpha(1);
draw_set_color(c_white);
draw_roundrect(boxX, boxY, boxX + boxW, boxY + boxH, true);

// Fuente y color del texto
draw_set_font(fntRainyHearts);
draw_set_color(c_white);

// Dibuja el texto dentro del cuadro con 15px de padding interno
if (!is_undefined(buffer) && is_struct(buffer)) {
    buffer.draw(boxX + 15, boxY + 15);
}