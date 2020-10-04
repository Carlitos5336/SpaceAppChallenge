draw_set_halign(fa_left);
draw_set_font(fnt_Game);


draw_text(80, 30 + 0*padding, "Ores: " + string(global.ores));
draw_sprite(spr_Ore, 0, 20, 30 + 0*padding);
draw_text(80, 30 + 1*padding, "Iron: " + string(global.iron));
draw_sprite(spr_Iron, 0, 20, 30 + 1*padding);
draw_text(80, 30 + 2*padding, "Nickel: " + string(global.nickel));
draw_sprite(spr_Nickel, 0, 20, 30 + 2*padding);
draw_text(80, 30 + 3*padding, "Platinum: " + string(global.platinum));
draw_sprite(spr_Platinum, 0, 20, 30 + 3*padding);
draw_text(80, 30 + 4*padding, "Gold: " + string(global.gold));
draw_sprite(spr_Gold, 0, 20, 30 + 4*padding);

draw_set_color(c_red);
draw_text_transformed(80, 30 + 5*padding, "Earth Strikes: " + string(global.earth_strikes), bscale, bscale, 0);
draw_set_color(c_white);