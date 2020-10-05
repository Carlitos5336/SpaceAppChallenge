audio_play_sound(sfx_death, 0, 0);
for(var i =0; i < 2; i++){
	var anim = instance_create_layer(x, y, "Instances", obj_Animation);
	if(death_by_planet) anim.sprite_index = choose(spr_exp2, spr_exp4);
	else {
		anim.sprite_index = choose(spr_exp1, spr_exp3);
		var _scale = random_range(10, 11);
		anim.image_xscale = _scale;
		anim.image_yscale = _scale;
	}
	anim.image_index = 0;
	anim.image_angle = -90 + point_direction(global.planet.x, global.planet.y, x, y);
}


global.camera.screen_shake(1, 50);


transition(Transit, 0.5, 0.1, c_white);

