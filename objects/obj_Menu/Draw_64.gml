

draw_set_halign(fa_center);
draw_set_font(fnt_Title);

draw_set_color(c_gray);
draw_text(display_get_gui_width()/2, 200, title);

draw_set_font(fnt_Menu);
draw_set_alpha(1);
// dibujar menú
var pad_acc = 0;
for(var i = 0; i < menu_length; i++)
{
	var col = c_gray;
	var sca = 1;
	if(i == selected){
		col = make_color_rgb(red, green , blue);
		sca = bscale;
	}
	draw_text_transformed_color(display_get_gui_width()/2, start_y + pad_acc, menu[i], sca, sca, 0, col, col, col,col, 1);
	pad_acc += padding_y;
}

// resetear ajustes de dibujo
draw_set_color(c_white);