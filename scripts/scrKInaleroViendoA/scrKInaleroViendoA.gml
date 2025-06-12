function scrKinaleroViendoA(dir){
//todos estan en mayusculas para que funcione al encontrar el archivo
//spride de la accion correspondiente, no cambiarlo
	if (dir < 22.5 || dir >= 337.5) {
		face = "Derecha";
	} else if (dir >= 22.5 && dir < 67.5) {
		face = "ArribaDerecha";
	} else if (dir >= 67.5 && dir < 112.5) {
		face = "Arriba";
	} else if (dir >= 112.5 && dir < 157.5) {
		face = "ArribaIzquierda";
	} else if (dir >= 157.5 && dir < 202.5) {
		face = "Izquierda";
	} else if (dir >= 202.5 && dir < 247.5) {
		face = "AbajoIzquierda";
	} else if (dir >= 247.5 && dir < 292.5) {
		face = "Abajo";
	} else if (dir >= 292.5 && dir < 337.5) {
		face = "AbajoDerecha";
	}
}