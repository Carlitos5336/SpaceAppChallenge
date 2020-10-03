global.planet = instance_create_layer(room_width/2, room_height/2, "Instances", obj_Planet);

global.player = instance_create_layer(global.planet.x, global.planet.y - 3000, "Instances", obj_SpaceShip);

global.camera = instance_create_layer(x, y, "Instances", obj_Camera);

global.partM = instance_create_layer(x, y, "Instances", obj_ParticleManager);

global.iron = 0;
global.nickel = 0;
global.platinum = 0;
global.gold = 0;

quantity_out = 20;
quantity_in = 30;
respawn_time = 1 * room_speed;

function generate_asteroids(){
	for(var i = 0; i < quantity_in; i++){
		var _radius = random_range(2000, 3500);
		var _speed = random_range(0.15, 0.35);
		var _angle = random_range(0, 359);
		var _x = lengthdir_x(_radius, _angle);
		var _y = lengthdir_y(_radius, _angle);
		var ast = instance_create_layer(_x, _y, "Instances", obj_Asteroid);
		ast.image_index = choose(0, 1);
		ast.radius = _radius;
		ast.v_speed = _speed;
		ast.ang_speed = random_range(0, 359);
	}
	for(var i = 0; i < quantity_out; i++){
		var _radius = random_range(3600, 6000);
		var _speed = random_range(0.04, 0.08);
		var _x = lengthdir_x(_radius, _angle);
		var _y = lengthdir_y(_radius, _angle);
		var ast = instance_create_layer(_x, _y, "Instances", obj_Asteroid);
		ast.image_index = choose(0, 1);
		ast.radius = _radius;
		ast.v_speed = _speed;
		ast.ang_speed = random_range(0, 359);
	}
}

generate_asteroids();

display_set_gui_size(1766, 1366);