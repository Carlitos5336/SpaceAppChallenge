if(instance_exists(global.player)){
	global.player.control = false;
	obj_Spawn.show("Space Station destroyed by an asteroid.");
	transition(Transit, 3, 2, c_red);
}
audio_play_sound(sfx_death, 0, 0);
for(var i =0; i < 2; i++){
	var anim = instance_create_layer(x, y, "Instances", obj_Animation);
	anim.sprite_index = choose(spr_exp1, spr_exp3);
	var _scale = random_range(15, 18);
	anim.image_xscale = _scale;
	anim.image_yscale = _scale;

	anim.image_index = 0;
	anim.image_angle = -90 + point_direction(global.planet.x, global.planet.y, x, y);
}


global.camera.screen_shake(1, 50);