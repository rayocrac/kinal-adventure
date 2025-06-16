if (keyboard_check_pressed(vk_escape)) {
    if (instance_exists(obj_Options)) {
        instance_activate_object(obj_Options)
        // obj_options mostraría las opciones y pausaría el juego
    }else {
		instance_create_layer(view_xview[0] + 100, view_yview[0] + 100, "Instances" , obj_Options)
		instance_deactivate_all(true)
		instance_activate_object(obj_Options);
	}
	
}
