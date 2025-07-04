function scrBalaColisionTiles(xTo, yTo, capa) {
    var tilemap_id = layer_tilemap_get_id(capa);
    var tile_w = tilemap_get_tile_width(tilemap_id);
    var tile_h = tilemap_get_tile_height(tilemap_id);

    var tile_x = floor(xTo / tile_w);
    var tile_y = floor(yTo / tile_h);

    var tile_id = tilemap_get(tilemap_id, tile_x, tile_y);
    return (tile_id > 0); // true si hay un tile dibujado
}
