retardoDialogo = 0;
abrirAlColisionar = true;

dialogos ="[wave]!BIEN HECHO¡ Ahora, te enseñare...[/wave][/page]" +
"[pulse]El noble arte del [c_orange]dash.[/color][/pulse] [wobble]el huir con estilo.[/wobble][/page]" +
"[wave]moviendote,Haz [c_yellow][sprMouse,2][/color] y avanzaras del tiron.[/wave][/page]" +
"[jitter]Ideal para esquivar responsabilidades, digo, enemigos.[/jitter][/page]" +
"[c_red][shake]Pero calma, Kinalerito.  No puedes abusar.[/shake][/color][/page]" +
"[pulse]Dashear te hace invencible pero [c_orange]tiene que recargarse[/color].[/pulse][/page]" +
"[c_orange]Esa barra naranja[/color] te indica cuando puedes hacer dash de nuevo.[/page]" +
"Tambien el mouse a su lado izquierdo. [/page]si cambia de color a [c_red]rojo[/color], puedes usarlo.[/page]" +
"[wave]Ya te crees un ninja? Espera, falta mas...[/wave][/page]" +
"[pulse]Tu [c_aqua]habilidad especial[/color] se activa con [c_aqua][sprFuncionales,1][/color].[/pulse][/page]" +
"[wobble]Cada material tiene su propio poder especial.[/wobble][/page] [c_aqua]¿Ves la barra azul?[/color][/page]" +
"[jitter]Si esta vacia, significa que aun no ha cargado.[/jitter][/page]" +
"Primero, toma ese lapiz y aprende a usarlo, te servira mucho.[/page]" +
"Ahh, que no sabes recogerlo? Pues mira, te explico[/page]ponte encima de el y presiona [c_green][sprLetras,4][/color] asi lo recogeras.[/page]" +
"Tomalo y sigue la ruta de conos de entrenamiento.";



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
tamanoCaja = 70
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