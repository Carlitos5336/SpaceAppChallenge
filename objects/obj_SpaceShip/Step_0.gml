var move = global.input.move;

var move_Y = 0;
var move_X = 0;
if(move){
	var move_Y = lengthdir_y(1, point_direction(x, y, mouse_x, mouse_y) - point_direction(global.planet.x, global.planet.y, x, y));
	var move_X = lengthdir_x(1, point_direction(x, y, mouse_x, mouse_y) - point_direction(global.planet.x, global.planet.y, x, y));
}

if(move_X != 0){
	h_speed += acceleration_r * move_X;
	h_speed = clamp(h_speed, -move_speed, move_speed);
}
else{
	h_speed = lerp(h_speed, 0, deceleration_r);
}

if(move_Y != 0){
	rotation_dir = move_Y;
	v_speed += acceleration_a * move_Y;
	v_speed = clamp(v_speed, -move_speed, move_speed);
}
else{
	v_speed = lerp(v_speed, speed_0 * rotation_dir, deceleration_a);
}

var gravscale = 2400/radius
if(gravscale < 1) gravscale = 0;
h_speed -= grav * gravscale;

// 2D to circular movement

image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;

ang_speed += v_speed/(3*move_speed);
radius = clamp(radius + h_speed*5, 0, radius_range[1]);


x = global.planet.x + (radius - x_offset) * cos(degtorad(ang_speed));
y = global.planet.y + (radius - y_offset) * sin(degtorad(ang_speed));



function shoot(){
	var bullet = instance_create_layer(x, y, "Instances", obj_Bullet);
	bullet.direction = image_angle + 90;
	bullet.speed = bullet_spd;
	bullet.damage = bullet_dmg;
	
	//global.camera.screen_shake(0.3, 10);
	
	image_xscale = 1.3;
	image_yscale = 1.3;
	
	var move_Y = lengthdir_y(1, 180 + point_direction(x, y, mouse_x, mouse_y) - point_direction(global.planet.x, global.planet.y, x, y));
	var move_X = lengthdir_x(1, 180 + point_direction(x, y, mouse_x, mouse_y) - point_direction(global.planet.x, global.planet.y, x, y));
	
	h_speed = move_speed * move_X;
	v_speed = move_speed * move_Y;
	
}

if(mouse_check_button_pressed(mb_left)){
	shoot();
}

image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = lerp(image_yscale, 1, 0.1);

fire.x = x;
fire.y = y;
fire.image_angle = image_angle;

if(move_X == 0 and move_Y == 0){
	fire.visible = false;
}
else{
	part_particles_create(global.partM.ps, x, y, global.partM.smoke, 1);
	fire.visible = true;
}