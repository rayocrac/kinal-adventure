x -= 2; // Velocidad hacia la izquierda

// Si sale de la pantalla, se destruye
if (x < -sprite_width) {
    instance_destroy();
}

//si ya afecto
if (!ya_afecto && place_meeting(x, y, obj_Kinalero)) {
    with (instance_place(x, y, obj_Kinalero)) {
        estres += 10;
    }
    ya_afecto = true;
    instance_destroy(); // Destruye el objeto tras afectar
}
