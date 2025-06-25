
function scrColisionTiles(xDestino, yDestino, nombreTilemap) {
    // Tamaño de cada tile en píxeles
    var tamanoTile = 16;

    // Obtiene el ID de la capa de tilemap de colisión
    var idTilemap = layer_tilemap_get_id(nombreTilemap);

    // Obtiene los bordes de la máscara de colisión del sprite actual
    var bordeIzquierdo = sprite_get_bbox_left(sprite_index);
    var bordeDerecho   = sprite_get_bbox_right(sprite_index);
    var bordeArriba    = sprite_get_bbox_top(sprite_index);
    var bordeAbajo     = sprite_get_bbox_bottom(sprite_index);

    // Calcula la posición absoluta de la máscara de colisión en el destino
    var mascaraIzquierda = xDestino + bordeIzquierdo  - sprite_xoffset;
    var mascaraDerecha   = xDestino + bordeDerecho    - sprite_xoffset;
    var mascaraArriba    = yDestino + bordeArriba     - sprite_yoffset;
    var mascaraAbajo     = yDestino + bordeAbajo      - sprite_yoffset;

    // Define las esquinas de la máscara de colisión
    var esquinas = [
        [mascaraIzquierda, mascaraArriba],         // Esquina superior izquierda
        [mascaraDerecha, mascaraArriba],           // Esquina superior derecha
        [mascaraIzquierda, mascaraAbajo],          // Esquina inferior izquierda
        [mascaraDerecha, mascaraAbajo]             // Esquina inferior derecha
    ];

    // Recorre todas las esquinas para detectar colisión
    for (var i = 0; i < 4; i++) {
        // Obtiene la posición X de la esquina
        var posX = esquinas[i][0];
        // Obtiene la posición Y de la esquina
        var posY = esquinas[i][1];
        // Obtiene la columna del tile correspondiente
        var tileX = floor(posX / tamanoTile);
        // Obtiene la fila del tile correspondiente
        var tileY = floor(posY / tamanoTile);
        // Obtiene el índice del tile en esa posición
        var tile = tilemap_get(idTilemap, tileX, tileY);
        // Si existe un tile sólido, hay colisión
        if (tile != 0) {
            return true;
        }
    }
    return false; // No hay colisión
}