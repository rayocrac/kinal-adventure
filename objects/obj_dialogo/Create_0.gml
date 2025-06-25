// CREATE EVENT
texto = "Hola [wave]jugador[/wave], este juego aun no esta [rainbow]terminado[/rainbow].[/page]Esto es la [rainbow]version Demo[/rainbow].";
paginas = string_split(texto, "[/page]");
paginaActual = 0;
margenLados = 10;
margenAbajo = 10;
cuadroAlto = 50;
cuadroAncho = camera_get_view_width(view_camera[0]) - margenLados * 2;
buffer = scribble(paginas[paginaActual]).wrap(cuadroAncho - 10, cuadroAlto - 10);
cerrado = false;