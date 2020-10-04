

draw_set_halign(fa_center);
draw_set_font(fnt_Title);

draw_set_color(c_gray);
draw_text(display_get_gui_width()/2, 200, title);

draw_set_font(fnt_Menu);

// dibujar menú
var pad_acc = 0;
for(var i = 0; i < menu_length; i++)
{
	if(i == selected){
		draw_set_color(c_white);
	}
	else{
		draw_set_color(c_gray);
	}
	draw_text(display_get_gui_width()/2, start_y + pad_acc, menu[i]);
	pad_acc += padding_y;
}

// resetear ajustes de dibujo
draw_set_color(c_white);