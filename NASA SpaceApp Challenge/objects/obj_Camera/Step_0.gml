function screen_shake(length, strength){
	sc_length = length * room_speed;
	sc_strength = strength;
}

var new_x = x;
var new_y = y;
if(instance_exists(target)){
	var _angle = point_direction(global.planet.x, global.planet.y, target.x, target.y) + 90;
	var xoff = scale * x_offset * -cos(degtorad(_angle));
	var yoff = scale * y_offset * sin(degtorad(_angle));
	new_x = lerp(x, target.x - camera_width/2 - xoff, 1/delay);
	new_y = lerp(y, target.y - camera_height/2 - yoff, 1/delay);
	
	scale = 2*(target.radius - target.radius_range[0])/(target.radius_range[1] - target.radius_range[0]);
	scale = clamp(scale, 1, 2);
	camera_set_view_size(camera_id, scale*camera_width, scale*camera_height);
}

if(sc_length > 0){
    new_x += random_range(0, sc_strength);
	new_y += random_range(0, sc_strength);
	sc_length -= 1;
}

new_x = clamp(new_x, 0, room_width - scale * camera_width);
new_y = clamp(new_y, 0, room_height - scale * camera_height);

x = new_x;
y = new_y;

camera_set_view_pos(camera_id, x, y);
camera_set_view_angle(camera_id, camera_angle);

