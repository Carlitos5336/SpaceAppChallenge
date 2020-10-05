var gravscale = 1400/radius;
if(gravscale < 1) gravscale = 0;
h_speed -= grav * gravscale;

// 2D to circular movement

ang_speed += v_speed;
radius = radius + h_speed*5;


x = global.planet.x + (radius) * cos(degtorad(ang_speed));
y = global.planet.y + (radius) * sin(degtorad(ang_speed));

tet.x = x;
tet.y = y - 600;
tet1.x = x;
tet1.y = y - 600;
if(global.satellites_fixed < 3){
	if(instance_exists(global.player)){
		if(distance_to_object(global.player) < radius_p - 100){
			tet.visible = true;
		}
		else{
			tet.visible = false;
		}
	}
	else{
		tet.visible = false;
	}
}
else{
	show_debug_message(tet1.visible);
	if(instance_exists(global.player)){
		if(distance_to_object(global.player) < radius_p - 100){
			tet1.visible = true;
		}
		else{
			tet1.visible = false;
		}
	}
	else{
		tet1.visible = false;
	}
}

function process(){
	tet.bscale = 4;
	tet1.bscale = 4;
	if(bar.image_speed == 0 and global.ores > 0){

		tet.red = 0;
		tet.blue = 0;
		
		tet1.red = 0;
		tet1.blue = 0;
		
		audio_play_sound(sfx_processing, 0, 0);
		bar.image_speed = 0.6;
		bar.image_index = 0;
		bar.visible = true;
		if(instance_exists(global.player)){
			global.player.control = false;
		}
	}
	else{
		global.camera.screen_shake(1, 20);
		
		tet.green = 0;
		tet.blue = 0;
		
		tet1.green = 0;
		tet1.blue = 0;
		
		audio_play_sound(sfx_deny, 0, 0);
	}
}

function end_process(){
	audio_play_sound(sfx_processed, 0, 0);
	var counter = global.ores;
	for(var i = 0; i < counter; i++){
		global.ores -= 1;
		obj_Spawn.ores_n -= 1;
		obj_Spawn.ores_color = c_red;
		obj_Spawn.ores_alpha = 1;
		obj_Spawn.ores_scale = 0.5;
		var n = random(1);
		if(n < 0.8){
			global.iron += 1;
			obj_Spawn.iron_scale = 1.5;
			obj_Spawn.iron_alpha = 1;
			obj_Spawn.iron_color = c_green;
			obj_Spawn.iron_n += 1;
		}
		else if(n < 0.9){
			global.nickel += 1;
			obj_Spawn.nic_scale = 1.5;
			obj_Spawn.nic_alpha = 1;
			obj_Spawn.nic_color = c_green;
			obj_Spawn.nic_n += 1;
		}
		else if(n < 0.97){
			global.platinum += 1;
			obj_Spawn.plat_scale = 1.5;
			obj_Spawn.plat_alpha = 1;
			obj_Spawn.plat_color = c_green;
			obj_Spawn.plat_n += 1;
		}
		else{
			global.gold += 1;
			obj_Spawn.gold_scale = 1.5;
			obj_Spawn.gold_alpha = 1;
			obj_Spawn.gold_color = c_green;
			obj_Spawn.gold_n += 1;
		}
	}
	
}

bar.x = x - 100;
bar.y = y;