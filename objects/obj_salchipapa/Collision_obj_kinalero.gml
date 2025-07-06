// Solo cura si no está al máximo
if (other.hp < other.totalHp) {
    // Curar hasta un máximo de 4
    other.hp = min(other.hp + 2, other.totalHp);

    // Efecto visual opcional (corazón, chispa, etc.)
    effect_create_above(ef_hearts, x, y, 1, c_red);

    // Sonido de curación opcional
    // audio_play_sound(snd_curar, 1, false);

    // Desaparecer tras usarse
    instance_destroy();
}
