velocidadKinalero = 2;


accion = "Quieto";
fotograma = "Abajo";
velocidadDash= 6;
direccionDash=0;

// Inicializar el conjunto de armas (por ejemplo, 2 espacios vacíos)
conjuntoArmas = [noone, noone];

//posicion ajustable desde el arma usable
posYNegativa = 15;
posYPositiva = 0;

// Datos del arma activa
arma = {
	indice: 0,       // Índice del arma actualmente equipada
	angulo: 0,       // Ángulo hacia donde apunta
	frecuencia: 0,// Tiempo restante antes de poder disparar de nuevo
};

velocidadBala= 0


hp = 4;
totalHp = hp;
dano = 1;