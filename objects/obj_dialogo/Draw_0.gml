
if (!cerrado) {
    var camara = view_camera[0];
    var vistaX = camera_get_view_x(camara);
    var vistaY = camera_get_view_y(camara);
    var vistaAlto = camera_get_view_height(camara);
	var vistaAncho = camera_get_view_width(camara);

    var cuadroX = vistaX + margenLados;
    var cuadroY = vistaY + vistaAlto - cuadroAlto - margenAbajo;

if(global.cinematica && spriteFondoCinematica != noone){
	draw_sprite_stretched(spriteFondoCinematica, subImagen, vistaX, vistaY, vistaAncho,vistaAlto)
}

    draw_sprite_stretched(sprCajaDialogo, colorCajaDialogo, cuadroX - 10, cuadroY - posYNegativa + posYPositiva, cuadroAncho + 20, cuadroAlto);
    draw_sprite(personajeHablando, subImagen, cuadroX + 10, cuadroY + 25 -posYNegativa + posYPositiva);

    if (!is_undefined(buffer) && is_struct(buffer)) {
        buffer.draw(cuadroX + 30, cuadroY + 5 - posYNegativa + posYPositiva, typist);
    }
}