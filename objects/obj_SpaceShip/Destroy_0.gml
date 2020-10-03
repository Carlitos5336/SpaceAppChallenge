for(var i =0; i < 2; i++){
	var anim = instance_create_layer(x, y, "Instances", obj_Animation);
	anim.sprite_index = choose(spr_exp2, spr_exp4);
	anim.image_index = 0;
	anim.image_angle = -90 + point_direction(global.planet.x, global.planet.y, x, y);
}


obj_Spawn.alarm[1] = obj_Spawn.respawn_time;
global.camera.screen_shake(1, 50);

with(obj_Asteroid){
	instance_destroy();
}

obj_Spawn.generate_asteroids();