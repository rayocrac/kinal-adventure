function scrPersonajeMovimientoA(spd, dir) {
    // Bucle que recorre ángulos desde 0 hasta 50, en pasos de 10 (0, 10, 20, ..., 50)
    for (var angulo = 0; angulo < 60; angulo += 10) {
        
        // Segundo bucle: el multiplicador puede ser -1 o 1, para probar a ambos lados del ángulo base
        for (var multiplicador = -1; multiplicador <= 1; multiplicador += 2) {
            
            // Calcula una nueva dirección sumando o restando el ángulo a la dirección actual
            var nuevaDir = dir + angulo * multiplicador;
            
            // Calcula la nueva posición (xA, yA) desplazándose en la nueva dirección con la velocidad 'spd'
            var xA = round(x + lengthdir_x(spd, nuevaDir));
            var yA = round(y + lengthdir_y(spd, nuevaDir));
    
            // Verifica si la nueva posición está libre de colisiones
            if (place_free(xA, yA)) {
                // Si la posición está libre, mueve al personaje ahí y sale de la función
                x = xA;
                y = yA;
                exit;
            }
        }
    }
}
