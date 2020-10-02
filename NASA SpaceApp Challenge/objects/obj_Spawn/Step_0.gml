if(!alarm[0]){
	alarm[0] = generation_time;
}

function generate_asteroids(){
	for(var i = 0; i < quantity; i++){
		var _x = random_range(0, room_width);
		var _y = random_range(0, room_height);
		var ast = instance_create_layer(_x, _y, "Instances", obj_Asteroid);
		ast.image_index = choose(0, 1);
	}
}