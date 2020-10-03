if(!instance_exists(target)) target = noone;
if(target == noone){
	
	if(instance_exists(global.player)){
		if(distance_to_object(global.player) < 200){
			target = global.player;
		}
	}

	var gravscale = 1400/radius;
	if(gravscale < 1) gravscale = 0;
	h_speed -= grav * gravscale;

	// 2D to circular movement

	ang_speed += v_speed;
	radius = radius + h_speed*5;


	x = global.planet.x + (radius) * cos(degtorad(ang_speed));
	y = global.planet.y + (radius) * sin(degtorad(ang_speed));

}
else{
	x = lerp(x, target.x, 0.1);
	y = lerp(y, target.y, 0.1);
	
	if(place_meeting(x, y, target)){
		switch(mineral){
			case "iron":
				global.iron += 1;
				break;
			case "gold":
				global.gold += 1;
				break;
			case "nickel":
				global.nickel += 1;
				break;
			case "platinum":
				global.platinum += 1;
				break;
		}
		instance_destroy();
	}
}