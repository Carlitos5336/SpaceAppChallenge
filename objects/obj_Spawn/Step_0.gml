bscale = lerp(bscale, 1, 0.1);
ores_scale = lerp(ores_scale, 0.8, 0.1);
iron_scale = lerp(iron_scale, 0.8, 0.1);
gold_scale = lerp(gold_scale, 0.8, 0.1);
plat_scale = lerp(plat_scale, 0.8, 0.1);
nic_scale = lerp(nic_scale, 0.8, 0.1);

ores_alpha = lerp(ores_alpha, 0, 0.02);
iron_alpha = lerp(iron_alpha, 0, 0.02);
gold_alpha = lerp(gold_alpha, 0, 0.02);
plat_alpha = lerp(plat_alpha, 0, 0.02);
nic_alpha = lerp(nic_alpha, 0, 0.02);

merge_color(gold_color, c_white, 0.04);
merge_color(ores_color, c_white, 0.04);
merge_color(iron_color, c_white, 0.04);
merge_color(nic_color, c_white, 0.04);
merge_color(plat_color, c_white, 0.04);

if(ores_alpha < 0.1) ores_n = 0;
if(iron_alpha == 0) iron_n = 0;
if(gold_alpha == 0) gold_n = 0;
if(nic_alpha == 0) nic_n = 0;
if(plat_alpha == 0) plat_n = 0;

if(global.earth_strikes >= 3){
	if(instance_exists(global.player)){
		global.player.control = false;
		transition(Transit, 2, 2, c_red);
		show("Too many earth strikes");
	}
}
