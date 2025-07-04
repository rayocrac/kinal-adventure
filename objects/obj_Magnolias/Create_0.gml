
layer_force_draw_depth(true, -1000)

// --- Variables de dialogo para este NPC ---
// Frases del NPC, cada string es una pagina de dialogo
dialogos = [
    "¡Hola! Este es el primer dialogo del NPC.",
    "Este es el segundo dialogo. ¿Como estas?",
    "¡Ultimo dialogo! Nos vemos."
]

// Indice del dialogo actual. Normalmente inicia en 0
dialogoActual = 0;

// ¿Repetir todos los dialogos en bucle? (true/false)
repetirTodo = false;

// ¿Repetir un solo dialogo especifico al terminar? (true/false)
repetirTexto = false;

// Indice del texto a repetir si repetirTexto es true
indiceTextoRepetir = 0;

// Controla si el NPC ya hablo, evita repetir mientras esta abierta la caja
yaHablo = false;

// Distancia maxima para activar el dialogo (en pixeles)
distancia_activar = 10;

// ¿Es cinemática? (true/false)
esCinematica = false;

// Sprite de fondo si es cinemática (noone si no)
fondoSiCinematica = noone;

// Color del texto del NPC (ej: c_white)
colorTextoNPC = c_white;

// Color de la caja de dialogo (ej: c_black, c_white)
colorCaja = c_white;

//tamaño de la caja de dialogo, el promedio es 60 ggs
tamanoCaja = 60
// Desplazamiento vertical negativo de la caja (hacia arriba, normalmente 0)
yNegativa = 0;

// Desplazamiento vertical positivo de la caja (hacia abajo, normalmente 0)
yPositiva = 0;

// Sprite del NPC hablando
sprNPC = sprIdleMangolias;

// Fuente para el texto del NPC
strngFuenteNPC = "fntMinecraft";

// ¿El NPC comienza hablando (animado)? (true/false)
boolInicioHabla = true;

// Velocidad de animacion del sprite hablando (frames por letra)
velAnimado = 3;

// Array de sonidos para el efecto typist
arraySonidos = [ sndConsejeroHablaUno ];

// Velocidad del efecto typist (menor = mas rapido)
velTypist = global.velTypist;

// Opacidad del typist (0 a 1)
opcdTypist = 1;

// Pitch minimo para el sonido typist (ej: 0.9)
pitchMinimo = 1;

// Pitch maximo para el sonido typist (ej: 1.1)
pitchMaximo = 3;

// Caracteres a los que NO se les pone sonido (espacios, comas, etc)
textoOmitirSonido = " ,-+";