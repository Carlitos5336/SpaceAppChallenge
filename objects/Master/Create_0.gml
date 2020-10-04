global.input = instance_create_layer(x, y, "Instances", obj_Input);
instance_create_layer(x, y, "Instances", obj_Transition);
instance_create_layer(x, y, "Instances", obj_Cursor);

timer = 2.5 * room_speed;
transitioning = false;

switch(room){
	case NASA:
	case Chinola:
	case Country:
		alarm[0] = timer;
		break;
}