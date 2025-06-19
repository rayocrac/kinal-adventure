if (pausa) {
	if (!surface_exists(pausaCapa)) {
		pausaCapa = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
		surface_set_target(pausaCapa);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		instance_deactivate_all(true);
	}
	
	draw_surface(pausaCapa, 0, 0);
	
	// Obtener tamaño y posición de la vista correctamente
	var vistaAncho = camera_get_view_width(view_camera[0]);
	var vistaAlto = camera_get_view_height(view_camera[0]);
	var vistaX = camera_get_view_x(view_camera[0]);
	var vistaY = camera_get_view_y(view_camera[0]);

	// Dibujar el rectángulo semitransparente que cubre la pantalla
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(vistaX, vistaY, vistaX + vistaAncho, vistaY + vistaAlto, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	// Dibujar texto centrado en la pantalla
	draw_set_font(fntDaydream);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(vistaX + vistaAncho / 2, vistaY + vistaAlto / 2, "Juego Pausado");
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
