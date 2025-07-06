var datos = scrArmasKinalero(arma.indice, conjuntoArmas);
var tipo_bala = datos[0];
var velocidadBala = datos[1];
var posOrigenBalaX = datos[2];
var posOrigenBalaY = datos[3];

scrKinaleroArmaActual(velocidadBala, tipo_bala, posOrigenBalaX, posOrigenBalaY);

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