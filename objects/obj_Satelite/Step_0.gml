var gravscale = 1400/radius;
if(gravscale < 1) gravscale = 0;
h_speed -= grav * gravscale;

// 2D to circular movement

if(!pause){
	ang_speed += v_speed;
	radius = radius + h_speed*5;


	x = global.planet.x + (radius) * cos(degtorad(ang_speed));
	y = global.planet.y + (radius) * sin(degtorad(ang_speed));

}
tet.x = x;
tet.y = y - 800;

if(instance_exists(global.player)){
	if(distance_to_object(global.player) < radius_p - 100 and !fixed){
		tet.visible = true;
	}
	else{
		tet.visible = false;
	}
}
else{
	tet.visible = false;
}

function find_cell_rpos(rpos){
	for(var i = 0; i < ds_list_size(cells); i++){
		var curr_cell = ds_list_find_value(cells, i);
		if(curr_cell.rpos == rpos) return curr_cell;
	}
	return noone;
}

function check(){
	var ans = true;
	if(global.iron < iron){
		var c = find_cell_rpos(0);
		c.bscale = 2;
		c.green = 0;
		c.blue = 0;
		ans = false;
	}
	if(global.nickel < nickel){
		var c = find_cell_rpos(1);
		c.bscale = 2;
		c.green = 0;
		c.blue = 0;
		ans = false;
	}
	if(global.platinum < platinum){
		var c = find_cell_rpos(2);
		c.bscale = 2;
		c.green = 0;
		c.blue = 0;
		ans = false;
	}
	if(global.gold < gold){
		var c = find_cell_rpos(3);
		c.bscale = 2;
		c.green = 0;
		c.blue = 0;
		ans = false;
	}

	return ans;
}

function process(){
	tet.bscale = 4;
	if(bar.image_speed == 0 and check()){
		for(var i = 0; i < ds_list_size(cells); i++){
			var curr_cell = ds_list_find_value(cells, i);
			curr_cell.bscale = 2;
			curr_cell.red = 0;
			curr_cell.blue = 0;
		}
		tet.red = 0;
		tet.blue = 0;
		
		audio_play_sound(sfx_repaired, 0, 0);
		audio_play_sound(sfx_processing, 0, 0);
		bar.image_speed = 0.6;
		bar.image_index = 0;
		bar.visible = true;
		if(instance_exists(global.player)){
			global.player.control = false;
		}
		
		show_debug_message(obj_Spawn.iron_n);
		show_debug_message(iron);
		if(iron > 0){
			obj_Spawn.iron_scale = 1.5;
			obj_Spawn.iron_alpha = 1;
			obj_Spawn.iron_color = c_red;
			obj_Spawn.iron_n -= 1;
		}
		if(platinum > 0){
			obj_Spawn.plat_scale = 1.5;
			obj_Spawn.plat_alpha = 1;
			obj_Spawn.plat_color = c_red;
			obj_Spawn.plat_n -= 1;
		}
		if(nickel > 0){
			obj_Spawn.nic_scale = 1.5;
			obj_Spawn.nic_alpha = 1;
			obj_Spawn.nic_color = c_red;
			obj_Spawn.nic_n -= 1;
		}
		if(gold > 0){
			obj_Spawn.gold_scale = 1.5;
			obj_Spawn.gold_alpha = 1;
			obj_Spawn.gold_color = c_red;
			obj_Spawn.gold_n -= 1;
		}
	
		global.iron -= iron;
		global.nickel -= nickel;
		global.gold -= gold;
		global.platinum -= platinum;
		}
	else{
		
		global.camera.screen_shake(1, 20);
		
		tet.green = 0;
		tet.blue = 0;
		
		audio_play_sound(sfx_deny, 0, 0);
	}
}

function end_process(){
	
	audio_play_sound(sfx_processed, 0, 0);
	if(instance_exists(global.player)){
		global.player.control = true;
		global.player.ang_speed = ang_speed;
		global.player.radius = radius;
		global.player.rotation_dir = 1;
	}
	
	global.satellites_fixed += 1;

	
	fixed = true;
	pause = true;
	
	instance_deactivate_all(true);
	instance_activate_object(obj_Cursor);
	instance_activate_object(obj_Input);
	
	audio_play_sound(sfx_applause, 0, 0);

	button = instance_create_layer(x, y + 1700, "Instances", obj_Text);
	button.text = "Nice!";
	button.bscale = 4;
	button.fnt = fnt_Menu;
}

on_box = false;
with(obj_Cursor){
	if(place_meeting(x, y, other.button)){
		other.on_box = true;
	}
}
if((mouse_check_button_pressed(mb_left) and on_box) or (pause and global.input.commit)){
	button.bscale = 5;
	audio_play_sound(sfx_commit, 0, 0);
	button.red = 0;
	button.green = 0;
	if(!alarm[0]) alarm[0] = 0.5 * room_speed;
}

bar.x = x - 100;
bar.y = y;

for(var i = 0; i < ds_list_size(cells); i++){
	var curr_cell = ds_list_find_value(cells, i);
	curr_cell.x = x - 170 * (ds_list_size(cells)-1) + 450 * i;
	curr_cell.y = y - 500;
	curr_cell.visible = tet.visible;
}

if(!fixed){
	part_particles_create(global.partM.ps, x, y, global.partM.damage, 1);
}
