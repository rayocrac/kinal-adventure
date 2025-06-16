if (global.juegoPausado) {
    // Si no se ha guardado la velocidad, la guardamos
    if (velocidadBalaGuardada == -1) {
        velocidadBalaGuardada = speed;
        speed = 0;
    }
	// Salimos del Step para congelar la bala
    exit;
} else {
    // Si estaba pausada y ya se guardó velocidad, la restauramos
    if (velocidadBalaGuardada != -1) {
        speed = velocidadBalaGuardada;
        velocidadBalaGuardada = -1;
    }
}
