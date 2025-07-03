
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
	
	var ancho_sprite = sprite_get_width(personajeHablando);
var alto_sprite = sprite_get_height(personajeHablando);

if (ancho_sprite <= 32 && alto_sprite <= 32) {
    escalaNPC = 1;
} else {
    escalaNPC = 0.5;
}

draw_sprite_ext(personajeHablando, subImagen, cuadroX + 10, cuadroY + (cuadroAlto / 2), escalaNPC, escalaNPC, 0, c_white, 1);
    //draw_sprite(personajeHablando, subImagen, cuadroX + 10, cuadroY + 25 -posYNegativa + posYPositiva);

    if (!is_undefined(buffer) && is_struct(buffer)) {
        buffer.draw(cuadroX + 30, cuadroY + 5 - posYNegativa + posYPositiva, typist);
    }
}

