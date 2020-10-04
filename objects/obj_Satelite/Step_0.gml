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
tet.y = y - 600;

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

function check(){
	if(global.iron < iron) return false;
	if(global.nickel < nickel) return false;
	if(global.platinum < platinum) return false;
	if(global.gold < gold) return false;
	return true;
}

function process(){
	audio_play_sound(sfx_processing, 0, 0);
	if(bar.image_speed == 0 and check()){
		bar.image_speed = 0.6;
		bar.image_index = 0;
		bar.visible = true;
		if(instance_exists(global.player)){
			global.player.control = false;
		}
	}
}

function end_process(){
	
	audio_play_sound(sfx_repaired, 0, 0);
	if(instance_exists(global.player)){
		global.player.control = true;
		global.player.ang_speed = ang_speed;
		global.player.radius = radius;
		global.player.rotation_dir = 1;
	}
	
	global.satellites_fixed += 1;
	
	global.iron -= iron;
	global.nickel -= nickel;
	global.gold -= gold;
	global.platinum -= platinum;
	fixed = true;
	pause = true;
	
	instance_deactivate_all(true);
	instance_activate_object(obj_Cursor);
	instance_activate_object(obj_Input);

	button = instance_create_layer(x, y + 1700, "Instances", obj_Text);
	button.text = "Nice! I got it.";
	button.image_xscale *= 2;
	button.image_yscale *= 2;
	button.fnt = fnt_Menu;
}

on_box = false;
with(obj_Cursor){
	if(place_meeting(x, y, other.button)){
		other.on_box = true;
	}
}
if((mouse_check_button_pressed(mb_left) and on_box) or (pause and global.input.commit)){
	instance_activate_all();
	if(instance_exists(global.player)){
		global.player.control = true;
	}
	instance_destroy(button);
	pause = false;
}

bar.x = x - 100;
bar.y = y;

if(!fixed){
	part_particles_create(global.partM.ps, x, y, global.partM.damage, 1);
}
