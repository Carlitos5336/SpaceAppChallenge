function screen_shake(length, strength){
	sc_length = length * room_speed;
	sc_strength = strength;
}

var new_x = x;
var new_y = y;
if(instance_exists(target)){
	var _angle = point_direction(x, y, mouse_x, mouse_y);
	var xoff = scale * lengthdir_x(offset, _angle);
	var yoff = scale * lengthdir_y(offset, _angle);
	new_x = lerp(x, target.x - scale*camera_width/2 + xoff, 1/delay);
	new_y = lerp(y, target.y - scale*camera_height/2 + yoff, 1/delay);
	
	scale = 4*(target.radius - target.radius_range[0])/(4000 - target.radius_range[0]);
	scale = clamp(scale, 1, 4);
	camera_set_view_size(camera_id, scale*camera_width, scale*camera_height);
}

new_x = clamp(new_x, 0, room_width - scale * camera_width);
new_y = clamp(new_y, 0, room_height - scale * camera_height);

x = new_x;
y = new_y;

if(sc_length > 0){
	camera_set_view_pos(camera_id, x + random_range(0, sc_strength), y +random_range(0, sc_strength));
	sc_length -= 1;
}
else{
	camera_set_view_pos(camera_id, x, y);
}


