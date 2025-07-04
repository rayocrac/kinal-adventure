nuevo= false;
abrirAlColisionar = true;
dialogos = "[speed,0.15][wobble]¿?  zzz... zzz... zzz...[/wobble][/speed] ¡Otra vez aqui?[/page]" +
"[pulse]El pasto te volvio a ganar la batalla...[/pulse][/page]" +
"[speed,0.18][wave]Te quedaste dormido en el campo de Kinal.[/wave][/speed][/page]" +
"[jitter]Lo peor es que parece que estas soñando...[/jitter][/page]" +
"[speed,0.2][shake]Pero no soñando bien, soñando raro.[/shake][/speed][/page]" +
"[wobble]Como si fueras protagonista de algo...[/wobble][/page]" +
"[speed,0.18][wave]...y aun asi no sabes ni que dia es hoy.[/wave][/speed][/page]" +
"[pulse]Mira.[/pulse] Alla al fondo. Esa [rainbow]ciudad.[/rainbow][/page]" +
"[rainbow]Llena de oportunidades, errores y trafico.[/rainbow][/page]" +
"[shake]Ese mundo te necesita.[/shake] [wave]Y esta esperando.[/wave][/page]" +
"[speed,0.18]Debes [c_aqua][wave]estudiar.[/wave][/color][/speed] Suena aburrido...[/page]" +
"[jitter]Pero tambien es el camino para mejorar.[/jitter][/page]" +
"[pulse]Para tener futuro. Para vivir sin miedo.[/pulse][/page]" +
"[wave]Para ser profesional el dia de manana.[/wave][/page]" +
"[c_red][speed,0.14][wobble]Y para poder pagar el internet.[/wobble][/color][/speed][/page]" +
"[blink]Despierta.[/blink] Tienes tareas que no se haran solas.[/page]" +
"[speed,0.18][shake][c_red]Y no, no puedes delegarlas a la IA.[/color][/shake][/speed][/page]" +
"[pulse][c_green]¿verdad?[/color][/pulse]         [wobble]Lastima.[/wobble][/page]" +
"[wave]Arriba, kinalerito. es el momento[/wave][/page]" +
"[rainbow][jitter]Este es el inicio de tu camino.[/jitter][/rainbow][/page]" +
"[pulse]Empezar es de muchos, terminar [speed,0.05]de pocos.[/speed][/pulse]"


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