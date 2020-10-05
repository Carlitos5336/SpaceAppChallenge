global.input = instance_create_layer(x, y, "Instances", obj_Input);
instance_create_layer(x, y, "Instances", obj_Transition);
instance_create_layer(x, y, "Instances", obj_Cursor);


base_width = room_width;
base_height = room_height;
width = base_width;
height = base_height;

timer = 2.5 * room_speed;
transitioning = false;

switch(room){
	case NASA:
	case Chinola:
	case Country:
		alarm[0] = timer;
		break;
}