if(!no_explosion){
	global.camera.screen_shake(0.5, 20);
	var quantity = random_range(2, 5);
	if(drop){
		if(instance_exists(global.player)){
			if(distance_to_object(global.player) < 2000){
				audio_play_sound(sfx_explosionclose, 0, 0);
			}
			else{
				audio_play_sound(sfx_explosion, 0, 0);
			}
		}
		
		for(var i =0; i < 2; i++){
			var anim = instance_create_layer(x, y, "Instances", obj_Animation);
			anim.sprite_index = choose(spr_exp1, spr_exp3);
			anim.image_index = 0;
			var _scale = random_range(3, 4);
			anim.image_xscale = _scale;
			anim.image_yscale = _scale;
			anim.image_angle = -90 + point_direction(global.planet.x, global.planet.y, x, y);
		}
		for(var i = 0; i < quantity; i++){
				var _radius = random_range(radius - 20, radius + 20);
				var _speed = random_range(0.05, 0.1);
				if(radius < 5000){
					_speed = random_range(0.2, 0.35);
				}
				var ast = instance_create_layer(x, y, "Instances", obj_Debris);
				ast.image_index = choose(2, 3);
				ast.radius = _radius;
				ast.v_speed = _speed * sign(v_speed);
				ast.ang_speed = ang_speed;
		}
	}
	else{
		audio_play_sound(sfx_death, 0, 0);
		for(var i =0; i < 2; i++){
			var anim = instance_create_layer(x, y, "Instances", obj_Animation);
			anim.sprite_index = choose(spr_exp2, spr_exp4);
			anim.image_index = 0;
			var _scale = random_range(2, 3);
			anim.image_xscale = _scale;
			anim.image_yscale = _scale;
			anim.image_angle = -90 + point_direction(global.planet.x, global.planet.y, x, y);
		}
	}
}