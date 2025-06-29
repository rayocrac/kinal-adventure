// Evento Step de obj_bala

var xDestino = x + lengthdir_x(speed, direction);
var yDestino = y + lengthdir_y(speed, direction);

// Verifica si la capa "tileColision" existe
if (layer_exists("tileColision")) {
    // Si existe, verifica colisión
    if (!scrColisionTiles(xDestino, yDestino, "tileColision")) {
        x = xDestino;
        y = yDestino;
    } else {
        instance_destroy(); // Se destruye al chocar
    }
} else {
    // Si no existe la capa, mueve la bala libremente
    x = xDestino;
    y = yDestino;
}
