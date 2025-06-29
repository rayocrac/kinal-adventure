if (!cerrado) {
    var camara = view_camera[0];
    var vistaX = camera_get_view_x(camara);
    var vistaY = camera_get_view_y(camara);
    var vistaAlto = camera_get_view_height(camara);

    var cuadroX = vistaX + margenLados;
    var cuadroY = vistaY + vistaAlto - cuadroAlto - margenAbajo;

    draw_sprite_stretched(sprCajaDialogo, colorCajaDialogo, cuadroX - 10, cuadroY, cuadroAncho + 20, cuadroAlto);

    draw_set_font(fntRainyHearts);
    draw_set_color(c_white);

    draw_sprite(personajeHablando, subImagen, cuadroX + 10, cuadroY + 25);

    if (!is_undefined(buffer) && is_struct(buffer)) {
        buffer.draw(cuadroX + 30, cuadroY + 5, typist);
    }
}
