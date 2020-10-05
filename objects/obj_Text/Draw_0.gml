draw_set_alpha(1);
draw_set_font(fnt);
if(button){
	draw_self();
}
draw_set_halign(fa_center);
draw_set_valign(fa_center);
var color = make_color_rgb(red, green, blue);
draw_text_transformed_color(x, y, text, bscale, bscale, 0, color, color, color, color, 1);
draw_set_valign(fa_top);