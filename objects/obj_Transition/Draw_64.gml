if(target_room != noone)
{
	// dibujar rectángulo de fade
	draw_set_color(colort);
	draw_set_alpha(fade);
	draw_rectangle(0, 0, display_get_gui_width(),
		display_get_gui_height(), false);
	
	//resetear ajustes de dibujo
	draw_set_color(c_white);
	draw_set_alpha(1);
}