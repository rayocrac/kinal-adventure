


abrirAlColisionar = true;
dialogos = "[speed,0.05][wave]BIENVENIDO, "+ global.jugadorNombre +" promedio.[/wave][/speed][/page]" +
"[jitter]Has despertado del letargo estudiantil.[/jitter][/page]" +
"[pulse]Yo soy la [c_blue]IA Kinalera[color],[/pulse] tu asistente digital.[/page]" +
"[shake]Aunque preferiria estar corriendo DOOM.[/shake][/page]" +
"[wave]Te dare instrucciones simples... espero que sepas leer.[/wave][/page]" +
"[speed,0.18][pulse]Usa [c_yellow]Z[/color] para avanzar el texto.[/pulse][/speed][/page]" +
"[pulse]Presiona [c_yellow]X[color] si quieres saltarte cosas (no recomendado).[/pulse][/page]" +
"[wobble]Y no, no puedes silenciarme.[/wobble] Lo intente yo tambien.[/page]" +
"[pulse]Ahora dime... ¿[jitter]como te llamas[/jitter]?[/pulse]";


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
tamanoCaja = 60
// Desplazamiento vertical negativo de la caja (hacia arriba, normalmente 0)
yNegativa = 0;

// Desplazamiento vertical positivo de la caja (hacia abajo, normalmente 0)
yPositiva = 0;

// Sprite del NPC hablando
sprNPC = sprConsejeroHablando;

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