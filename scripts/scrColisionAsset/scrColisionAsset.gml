function scrColisionAsset(spd, dir) {
    // Calculamos la nueva posición que queremos probar
    var xTo = x + lengthdir_x(spd, dir);
    var yTo = y + lengthdir_y(spd, dir);

    // Recorremos todas las instancias de objetos en la capa "npcColisiones"
    var npcLayer_id = layer_get_id("npcColisiones");

    // Asegurarnos de que la capa existe
    if (npcLayer_id == -1) return false;

    // Usamos "instance_place" para verificar si alguna instancia está en esa posición
    // Verificamos todas las instancias de la capa
    var npc = instance_place(xTo, yTo, obj_Npc);  // obj_Npc es el objeto que está en la capa npcColisiones

    // Si una instancia de obj_Npc está en la posición (xTo, yTo), se detecta la colisión
    if (npc != noone) {
        return true;  // Colisión detectada
    }

    return false;  // No colisiona con ningún objeto
}
