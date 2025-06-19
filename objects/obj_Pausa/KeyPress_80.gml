pausa = !pausa;

if (pausa) {
	audio_pause_all();
} else {
	surface_free(pausaCapa);
	instance_activate_all();
	audio_resume_all();
}