// Evento Step de obj_bala

// Calcula la nueva posición usando la velocidad y dirección actual
var xDestino = x + lengthdir_x(speed, direction);
var yDestino = y + lengthdir_y(speed, direction);

// Verifica colisión de la bala con tiles usando el script reutilizable
if (!scrColisionTiles(xDestino, yDestino, "tileColision")) {
    // Si NO hay colisión, mueve la bala
    x = xDestino;
    y = yDestino;
} else {
    // Si hay colisión, destruye la bala
    instance_destroy();
}