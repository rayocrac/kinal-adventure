if (keyboard_check_pressed(ord("E")) && global.aimbotListo) {
	global.kills = 0;
    global.aimbotActivo= true;
    global.aimbotListo = false;
    global.aimbotTemporizaodr = 60 * 10; //pa que dure 10 segundos fuckk
}

if (global.aimbotActivo) {
    scrKinaleroAimbot();
} else {
    scrKinaleroArmaActual();
}

if (global.aimbotActivo) {
	
    global.aimbotTemporizaodr -= 1;
	
    if (global.aimbotTemporizaodr<= 0) {
        global.aimbotActivo= false;
        global.kills = 0;
    }
}


switch (accion) {
    case "Quieto":
    case "Caminar":
        scrKinaleroMovimiento();
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