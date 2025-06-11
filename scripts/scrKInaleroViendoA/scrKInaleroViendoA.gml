function scrKInaleroViendoA(dir){

	if (dir < 22.5 || dir >= 337.5) {
		face = "derecha";
	} else if (dir >= 22.5 && dir < 67.5) {
		face = "arribaDerecha";
	} else if (dir >= 67.5 && dir < 112.5) {
		face = "arriba";
	} else if (dir >= 112.5 && dir < 157.5) {
		face = "arribaIzquierda";
	} else if (dir >= 157.5 && dir < 202.5) {
		face = "izquierda";
	} else if (dir >= 202.5 && dir < 247.5) {
		face = "abajoDerecha";
	} else if (dir >= 247.5 && dir < 292.5) {
		face = "abajo";
	} else if (dir >= 292.5 && dir < 337.5) {
		face = "abajoDerecha;
	}
}