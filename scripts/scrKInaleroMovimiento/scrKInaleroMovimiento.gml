function scrKinaleroMovimiento() {
    var hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
    
    var velocidadKinalero = 6;

    // Verifica si existe la capa de colisión
    var existeCapaColision = layer_exists("tileColision");

    if (hor != 0 || ver != 0) {
        var dir = point_direction(0, 0, hor, ver);
        var xDestino = x + lengthdir_x(velocidadKinalero, dir);
        var yDestino = y + lengthdir_y(velocidadKinalero, dir);

        // Si existe la capa de colisión, verifica colisiones
        if (!existeCapaColision || !scrColisionTiles(xDestino, yDestino, "tileColision")) {
            x = xDestino;
            y = yDestino;
        }

        accion = "Caminar";
        scrKinaleroViendoA(dir);
    } else {
        accion = "Quieto";
    }
}
