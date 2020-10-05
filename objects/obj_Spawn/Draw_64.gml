draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(fnt_Game);

if(end_text == ""){

	var start_y = 50;
	var start_x = 50;
	var icon_off = 450;
	var button_off = 50;
	var special_off = 300;
	var spr_scale = 0.5;

	if(global.ores > 0){
		draw_sprite_ext(spr_Button, 0, start_x + button_off, start_y + 0*padding, ores_scale, ores_scale, 0, c_white, 1);
		draw_text_transformed(start_x, start_y + 0*padding, "Ores: " + string(global.ores), ores_scale, ores_scale, 0);
	}	
	draw_sprite_ext(spr_Ore, 0, start_x + icon_off, start_y  + 0*padding, ores_scale * spr_scale, ores_scale * spr_scale, 0, c_white, ores_alpha);
	var si = ""
	if(sign(ores_n) == 1) si = "+";
	draw_text_color(start_x + special_off, start_y + 0*padding,  si + string(ores_n), ores_color, ores_color, ores_color, ores_color, ores_alpha);


	if(global.iron > 0){
		draw_sprite_ext(spr_Button, 0, start_x + button_off, start_y + 1*padding, iron_scale, iron_scale, 0, c_white, 1);
		draw_text_transformed(start_x, start_y + 1*padding, "Iron: " + string(global.iron), iron_scale, iron_scale, 0);
	}	
	draw_sprite_ext(spr_Iron, 0, start_x + icon_off, start_y  + 1*padding, iron_scale * spr_scale, iron_scale * spr_scale, 0, c_white, iron_alpha);
	if(sign(iron_n) == 1) si = "+";
	draw_text_color(start_x + special_off, start_y + 1*padding,  si + string(iron_n), iron_color, iron_color, iron_color, iron_color, iron_alpha);


	if(global.nickel > 0){
		draw_sprite_ext(spr_Button, 0, start_x + button_off, start_y + 2*padding, nic_scale, nic_scale, 0, c_white, 1);
		draw_text_transformed(start_x, start_y + 2*padding, "Nickel: " + string(global.nickel), nic_scale, nic_scale, 0);
	}
	draw_sprite_ext(spr_Nickel, 0, start_x + icon_off, start_y  + 2*padding, nic_scale * spr_scale, nic_scale * spr_scale, 0, c_white, nic_alpha);
	if(sign(nic_n) == 1) si = "+";
	draw_text_color(start_x + special_off, start_y + 2*padding,  si + string(nic_n), nic_color, nic_color, nic_color, nic_color, nic_alpha);


	if(global.platinum > 0){
		draw_sprite_ext(spr_Button, 0, start_x + button_off, start_y + 3*padding, plat_scale, plat_scale, 0, c_white, 1);
		draw_text_transformed(start_x, start_y + 3*padding, "Platinum: " + string(global.platinum), plat_scale, plat_scale, 0);
	}
	draw_sprite_ext(spr_Platinum, 0, start_x + icon_off, start_y  + 3*padding, plat_scale * spr_scale, plat_scale * spr_scale, 0, c_white, plat_alpha);
	if(sign(plat_n) == 1) si = "+";
	draw_text_color(start_x + special_off, start_y + 3*padding,  si + string(plat_n), plat_color, plat_color, plat_color, plat_color, plat_alpha);


	if(global.gold > 0){
		draw_sprite_ext(spr_Button, 0, start_x + button_off, start_y + 4*padding, gold_scale, gold_scale, 0, c_white, 1);
		draw_text_transformed(start_x, start_y + 4*padding, "Gold: " + string(global.gold), gold_scale, gold_scale, 0);
	}
	draw_sprite_ext(spr_Gold, 0, start_x + icon_off, start_y  + 4*padding, gold_scale * spr_scale, gold_scale * spr_scale, 0, c_white, gold_alpha);
	if(sign(gold_n) == 1) si = "+";
	draw_text_color(start_x + special_off, start_y + 4*padding, si + string(gold_n), gold_color, gold_color, gold_color, gold_color, gold_alpha);


	draw_set_color(c_red);
	if(global.earth_strikes > 0){
		draw_sprite_ext(spr_Button, 0, start_x + 200, start_y + 5*padding, bscale , bscale , 0, c_white, 1);
		draw_text_transformed(start_x, start_y + 5*padding, "Earth Strikes: " + string(global.earth_strikes), bscale, bscale, 0);
	}
	draw_set_color(c_white);
}
else{
	draw_set_halign(fa_center);
	draw_text_ext_transformed(display_get_gui_width()/2, display_get_gui_height()/2, end_text, 50, 400, 2.5 * bscale, 2.5 * bscale, 0);
}
draw_set_valign(fa_top);