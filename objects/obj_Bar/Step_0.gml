if(animation_end()){
	creator.end_process();
	image_speed = 0;
	image_index = 0;
	visible = false;
	if(instance_exists(global.player)){
		global.player.control = true;
		global.player.ang_speed = creator.ang_speed;
		global.player.radius = creator.radius;
		global.player.rotation_dir = 1;
	}
}

if(image_speed > 0){
	if(instance_exists(global.player)){
		global.player.x = lerp(global.player.x, creator.x, 0.1);
		global.player.y = lerp(global.player.y, creator.y, 0.1);
	}
}