if(pause){
	draw_set_halign(fa_center);
	draw_set_font(fnt_Menu);
	draw_text(display_get_gui_width()/2, 100, "Congrats! You fixed this satellite!");
	draw_set_font(fnt_Title);
	draw_text_transformed(display_get_gui_width()/2, 200, name, 0.7, 0.7, 0);
	draw_set_font(fnt_Game);
	draw_text_ext_transformed(display_get_gui_width()/2, 350, desc, 50, 1500, 0.7, 0.7, 0);
}