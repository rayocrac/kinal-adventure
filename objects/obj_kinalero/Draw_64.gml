//El clamp se asegura de que solo puedan ser valores entre 1 y 4
var vidaActual = clamp(hp, 1, 4);

var posicionXVida = 20;
var posicionYVida = 20;

draw_sprite_ext(sprVida, vidaActual, posicionXVida, posicionYVida, 2, 2, 0, c_white, 1);

// pa dibujar la barra de aimbot papuuuu

var posicionXBarraAimbot = 50;
var posicionYBarraAimbot = 25;

draw_sprite_ext(sprBarraAimbot, global.kills, posicionXBarraAimbot, posicionYBarraAimbot, 1, 1, 0, c_white, 1);