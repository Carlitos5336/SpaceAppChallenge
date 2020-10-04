other.get_hit(damage, direction);
other.speed += speed/10;
other.direction = direction;
instance_destroy();

if(instance_exists(global.player)){
	if(distance_to_object(global.player) < 2000){
		audio_play_sound(sfx_hitclose, 0, 0);
	}
	else{
		audio_play_sound(sfx_hit, 0, 0);
	}
}