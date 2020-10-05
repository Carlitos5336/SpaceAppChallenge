// TEXTO DE CREDITOS

draw_set_color(c_white);
draw_set_halign(fa_center);

var pad_acc = 0;
done = true;
for(var i = 0; i < n_cred; i++)
{
	var y_pos = pad_acc + padding_y + ref_y;
	if(y_pos > -64 && y_pos < room_height + 64)
	{
		if(i == 0)
		{
			draw_set_font(fnt_Title);
			draw_text(display_get_gui_width()/2, y_pos - 128, creditos[| i]);
		}
		else
		{
			draw_set_font(fnt_Menu);
			draw_text_transformed(display_get_gui_width()/2, y_pos, creditos[| i], 0.7, 0.7, 0);
		}
		done = false;
	}
	pad_acc += padding_text;
}

//resetear ajustes de dibujo
draw_set_halign(fa_left);
draw_set_color(c_white);