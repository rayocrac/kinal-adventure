function scrKinaleroMovimiento() {
    var hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var velocidadKinalero = 6;
    if (hor != 0 || ver != 0) {
        var dir = point_direction(0, 0, hor, ver);
        // Calcula la nueva posición destino
        var xDestino = x + lengthdir_x(velocidadKinalero, dir);
        var yDestino = y + lengthdir_y(velocidadKinalero, dir);

        // Usa el script de colisión para verificar si puedes moverte
        if (!scrColisionTiles(xDestino, yDestino, "tileColision")) {
            x = xDestino;
            y = yDestino;
        }

        accion = "Caminar";
        scrKinaleroViendoA(dir);
    } else {
        accion = "Quieto";
    }
}