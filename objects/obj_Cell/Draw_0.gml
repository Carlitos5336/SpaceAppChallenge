draw_self();
draw_set_alpha(1);
draw_set_font(fnt);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
var color = make_color_rgb(red, green, blue);
draw_text_transformed_color(x - 200, y, number,bscale,bscale, 0, color, color, color, color, 1);
draw_set_valign(fa_top);
draw_sprite_ext(image, 0, x, y, bscale, bscale, 0, color, 1);
