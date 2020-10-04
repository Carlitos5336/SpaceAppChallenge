global.planet = instance_create_layer(room_width/2, room_height/2, "Instances", obj_Planet);

global.player = instance_create_layer(global.planet.x, global.planet.y - 3000, "Instances", obj_SpaceShip);

global.camera = instance_create_layer(x, y, "Instances", obj_Camera);

global.partM = instance_create_layer(x, y, "Instances", obj_ParticleManager);

global.iron = 0;
global.nickel = 0;
global.platinum = 0;
global.gold = 0;
global.ores = 0;

global.earth_strikes = 0;

global.satellites_fixed = 0;

ss = instance_create_layer(x, y, "Instances", obj_SpaceStation);
var _radius = random_range(4000, 5500);
var _speed = 0.1
var _angle = random_range(45, 315);
var _x = lengthdir_x(_radius, _angle);
var _y = lengthdir_y(_radius, _angle);
ss.image_index = choose(0, 1);
ss.radius = _radius;
ss.v_speed = _speed;
ss.ang_speed = random_range(45, 315);

var sats = [obj_Satellite1, obj_Satellite2, obj_Satellite3];

for(var i = 0; i < 3; i++){
	st1 = instance_create_layer(x, y, "Instances", sats[i]);
	var _radius = random_range(4000, 5500);
	var _speed = 0.1
	var _angle = random_range(45, 315);
	var _x = lengthdir_x(_radius, _angle);
	var _y = lengthdir_y(_radius, _angle);
	st1.image_index = choose(0, 1);
	st1.radius = _radius;
	st1.v_speed = _speed;
	st1.ang_speed = random_range(45, 315);
}


quantity_1 = 20;
quantity_2 = 30;
quantity_3 = 30;
respawn_time = 1 * room_speed;

function generate_asteroids(){
	for(var i = 0; i < quantity_1; i++){
		var _radius = random_range(2450, 3700);
		var _speed = random_range(0.15, 0.35);
		var _angle = random_range(45, 315);
		var _x = lengthdir_x(_radius, _angle);
		var _y = lengthdir_y(_radius, _angle);
		var ast = instance_create_layer(_x, _y, "Instances", obj_Asteroid);
		ast.image_index = choose(0, 1);
		ast.radius = _radius;
		ast.v_speed = _speed;
		ast.ang_speed = random_range(45, 315);
	}
	for(var i = 0; i < quantity_2; i++){
		var _radius = random_range(5600, 7300);
		var _speed = random_range(0.04, 0.08);
		var _x = lengthdir_x(_radius, _angle);
		var _y = lengthdir_y(_radius, _angle);
		var ast = instance_create_layer(_x, _y, "Instances", obj_Asteroid);
		ast.image_index = choose(0, 1);
		ast.radius = _radius;
		ast.v_speed = _speed;
		ast.ang_speed = random_range(0, 359);
	}
	for(var i = 0; i < quantity_3; i++){
		var _radius = random_range(7600, 10000);
		var _speed = random_range(0.009, 0.03);
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

padding = 50;
bscale = 1;