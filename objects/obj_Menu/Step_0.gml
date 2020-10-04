bscale = lerp(bscale, 1, 0.1);
red = lerp(red, 255, 0.1);
green = lerp(green, 255, 0.1);
blue = lerp(blue, 255, 0.1);

if(control)
{
	// SONIDO
	if(selected != prev_selected){
		audio_play_sound(sfx_change, 0, 0);
	}


	// CAMBIO DE OPCIÓN EN MENÚ

	var change = global.input.down - global.input.up;

	prev_selected = selected;
	selected += change;
	selected = clamp(selected, 0, menu_length - 1);
	//cursor.y = start_y + padding_y * selected;

	// MENÚ

	if(global.input.commit)
	{
		audio_play_sound(sfx_commit, 0, 0);
		bscale = 1.5;
		red = 0;
		blue = 0;
		switch(selected)
		{
			case "0":
				control = false;
				transition(Level1, 1, 1, c_white);
				break;
			
			case "1":
				control = false;
				transition(Credits, 1, 1, c_white);
				break;
		}
	}
}