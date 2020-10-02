
global.input = instance_create_layer(x, y, "Instances", obj_Input);
global.planet = instance_create_layer(room_width/2, room_height/2, "Instances", obj_Planet);

global.player = instance_create_layer(global.planet.x, global.planet.y - 1100, "Instances", obj_SpaceShip);

global.camera = instance_create_layer(x, y, "Instances", obj_Camera);

generation_time = 2 * room_speed;
quantity = 5;