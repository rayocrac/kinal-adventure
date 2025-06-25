// DRAW EVENT
if (!cerrado) {
    var camara = view_camera[0];
    var vistaX = camera_get_view_x(camara);
    var vistaY = camera_get_view_y(camara);
    var vistaAncho = camera_get_view_width(camara);
    var vistaAlto = camera_get_view_height(camara);

    var cuadroX = vistaX + margenLados;
    var cuadroY = vistaY + vistaAlto - cuadroAlto - margenAbajo;

    draw_sprite_stretched(sprCajaDialogo, 9, cuadroX, cuadroY, cuadroAncho, cuadroAlto);
    draw_set_font(fntRainyHearts);
    draw_set_color(c_white);

    if (!is_undefined(buffer) && is_struct(buffer)) {
        buffer.draw(cuadroX + 5, cuadroY + 5);
    }
}