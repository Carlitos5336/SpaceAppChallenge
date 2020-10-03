if(control)
{
	// SONIDO
	//if(selected != prev_selected)


	// CAMBIO DE OPCIÓN EN MENÚ

	var change = global.input.down - global.input.up;

	prev_selected = selected;
	selected += change;
	selected = clamp(selected, 0, menu_length - 1);
	//cursor.y = start_y + padding_y * selected;

	// MENÚ

	if(global.input.commit)
	{
		switch(selected)
		{
			case "0":
				control = false;
				transition(Level1, 2, 4, c_white);
				break;
		}
	}
}