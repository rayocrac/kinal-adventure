if (pausa && !surface_exists(pausaCapa)) {
    pausaCapa = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
    surface_set_target(pausaCapa);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();

    // ¡AHORA desactiva las instancias!
    instance_deactivate_all(true);

    // Reactiva este objeto para que siga dibujando la pausa
    instance_activate_object(self);
}
