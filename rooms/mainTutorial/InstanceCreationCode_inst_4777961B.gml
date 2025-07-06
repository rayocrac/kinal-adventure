retardoDialogo = 60;
abrirAlColisionar = true;

dialogos ="[wave]por fin despiertas kinalerito.[/wave][pulse][/pulse][/page]soy tu ia de confianza,   te mostrare como andar   por aqui [/page]" +
"[shake]Mueve tu cuerpo con estas teclas sagradas:[/shake][/page]" +
"[c_yellow]*[sprLetras,0] = Izquierda.\n*[sprLetras,22] = Arriba\n" +
"[c_yellow]*[sprLetras,3] = Derecha\n*[sprLetras,18] = Abajo[/page]" +
"[pulse][c_yellow]¿Quieres sentirte mas\nlibre que estudiante \nsin deberes?[/pulse][/page]" +
"[wave][c_yellow]Combina teclas diagonales, como[sprLetras,22] + [sprLetras,0],[/wave] y veras como te mueves gradualmente...[/page][/color]" +
"[jitter]...cual hoja por el vien-to de la responsabilidad.[/jitter][/page]" +
"[c_red][shake]Pero JAMAS, JAMAS podras ir a la izquierda y derecha al mismo tiempo.[/shake][color][/page]" +
"[pulse]Esto no es fisica cuantica, es logica vectorial.[/pulse][/page]" +
"[wobble](Y eso lo veras cuando   tomes clase de Vectores. Si es que vas, claro.)[/wobble]";


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

// Color del texto del NPC (ej: c_white)
colorTextoNPC = c_white;

// Color de la caja de dialogo (ej: c_black, c_white)
colorCaja = c_white;

//tamaño de la caja de dialogo, el promedio es 60 ggs
tamanoCaja = 90
// Desplazamiento vertical negativo de la caja (hacia arriba, normalmente 0)
yNegativa = 0;

// Desplazamiento vertical positivo de la caja (hacia abajo, normalmente 0)
yPositiva = 0;

// Sprite del NPC hablando
sprNPC = sprConsejeroHablando;

// Fuente para el texto del NPC
strngFuenteNPC = "fntConsejero";

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