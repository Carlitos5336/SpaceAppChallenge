if(hp <= 0){
	instance_destroy();
}

function get_hit(dmg){
	image_xscale = 1.5;
	image_yscale = 1.5;
	hp -= dmg;
	hit = true;
}

image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = lerp(image_yscale, 1, 0.1);

if(hit){
	speed = lerp(speed, 4, 0.1)
}