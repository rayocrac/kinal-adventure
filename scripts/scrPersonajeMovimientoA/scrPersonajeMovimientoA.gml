function scrPersonajeMovimientoA(spd, dir) {
    var tilemap_id = layer_tilemap_get_id("tileColision");
    for (var angle = 0; angle < 90; angle += 15) { 
        for (var multiplier = -1; multiplier <= 1; multiplier += 2) {
            var newDir = dir + angle * multiplier;
            var xTo = x + lengthdir_x(spd, newDir);
            var yTo = y + lengthdir_y(spd, newDir);
            if (!place_meeting(xTo, yTo, tilemap_id)) {
                x = xTo;
                y = yTo;
                exit;
            }
        }
    }
    // Slide por ejes
    if (!place_meeting(x + lengthdir_x(spd, dir), y, tilemap_id)) {
        x += lengthdir_x(spd, dir);
        exit;
    }
    if (!place_meeting(x, y + lengthdir_y(spd, dir), tilemap_id)) {
        y += lengthdir_y(spd, dir);
        exit;
    }
}
