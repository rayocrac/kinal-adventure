var datos = scrArmasKinalero(arma.indice, conjuntoArmas);
var tipo_bala = datos[0];
var velocidadBala = datos[1];
var posOrigenBalaX = datos[2];
var posOrigenBalaY = datos[3];

if (keyboard_check_pressed(ord("Q")) && global.aimbotListo) {
	global.kills = 0;
    global.aimbotActivo= true;
    global.aimbotListo = false;
    global.aimbotTemporizaodr = 60 * 10; //pa que dure 10 segundos fuckk
}

if (global.aimbotActivo) {
    scrKinaleroAimbot();
} else {
	scrKinaleroArmaActual(velocidadBala, tipo_bala, posOrigenBalaX, posOrigenBalaY);
}

if (global.aimbotActivo) {
	
    global.aimbotTemporizaodr -= 1;
	
    if (global.aimbotTemporizaodr<= 0) {
        global.aimbotActivo= false;
        global.kills = 0;
    }
}

scrActualizacionArma()

if(velocidadKinalero == 0){
accion = "Quieto";
fotograma = "Abajo";
} else{
switch (accion) {
    case "Quieto":
    case "Caminar":
        scrKinaleroMovimiento(velocidadKinalero);
        scrKinaleroDash();
        break;

    case "Dash":
        scrPersonajeMovimientoA(velocidadDash, direccionDash);
        scrKinaleroViendoA(direccionDash);
        tiempoDash -= 1;
        if (tiempoDash <= 0) {
            accion = "Quieto"; // o "Caminar"
        }
        break;
	}
}