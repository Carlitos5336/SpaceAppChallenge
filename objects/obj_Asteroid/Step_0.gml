if(hp <= 0){
	instance_destroy();
}

function get_hit(dmg, dir){
	image_xscale = 1.5;
	image_yscale = 1.5;
	hp -= dmg;
	
	var anim = instance_create_layer(x, y, "Instances", obj_Animation);
	anim.sprite_index = choose(spr_exp1, spr_exp3);
	anim.image_index = 0;
	
	var move_Y = lengthdir_y(1, dir - point_direction(global.planet.x, global.planet.y, x, y));
	var move_X = lengthdir_x(1, dir - point_direction(global.planet.x, global.planet.y, x, y));
	
	h_speed = move_speed * move_X * 4;
	v_speed = move_speed * move_Y;	
}

image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = lerp(image_yscale, 1, 0.1);


var gravscale = 2400/radius;
if(gravscale < 1) gravscale = 0;
h_speed -= grav * gravscale;

// 2D to circular movement

ang_speed += v_speed;
radius = radius + h_speed*8;


x = global.planet.x + (radius) * cos(degtorad(ang_speed));
y = global.planet.y + (radius) * sin(degtorad(ang_speed));