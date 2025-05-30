// velocidad media
var velocidadMovimiento = 5;

 // Mover a la izquierda
if (keyboard_check(vk_left)) {
    x -= velocidadMovimiento;
}

 // Mover a la derecha
if (keyboard_check(vk_right)) {
    x += velocidadMovimiento;
}

// Mover hacia arriba
if (keyboard_check(vk_up)) {
    y -= velocidadMovimiento;
}

 // Mover hacia abajo
if (keyboard_check(vk_down)) {
    y += velocidadMovimiento;
}
