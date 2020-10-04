var gravscale = 1400/radius;
if(gravscale < 1) gravscale = 0;
h_speed -= grav * gravscale;

// 2D to circular movement

ang_speed += v_speed;
radius = radius + h_speed*5;


x = global.planet.x + (radius) * cos(degtorad(ang_speed));
y = global.planet.y + (radius) * sin(degtorad(ang_speed));

tet.x = x;
tet.y = y - 600;
tet1.x = x;
tet1.y = y - 600;
if(global.satellites_fixed < 3){
	if(instance_exists(global.player)){
		if(distance_to_object(global.player) < radius_p - 100){
			tet.visible = true;
		}
		else{
			tet.visible = false;
		}
	}
	else{
		tet.visible = false;
	}
}
else{
	show_debug_message(tet1.visible);
	if(instance_exists(global.player)){
		if(distance_to_object(global.player) < radius_p - 100){
			tet1.visible = true;
		}
		else{
			tet1.visible = false;
		}
	}
	else{
		tet1.visible = false;
	}
}

function process(){
	if(bar.image_speed == 0 and global.ores > 0){
		bar.image_speed = 0.6;
		bar.image_index = 0;
		bar.visible = true;
		if(instance_exists(global.player)){
			global.player.control = false;
		}
	}
}

function end_process(){
	var counter = global.ores;
	for(var i = 0; i < counter; i++){
		var n = random(1);
		if(n < 0.8){
			global.iron += 1;
		}
		else if(n < 0.9){
			global.nickel += 1;
		}
		else if(n < 0.97){
			global.platinum += 1;
		}
		else{
			global.gold += 1;
		}
		global.ores -= 1;
	}
}

bar.x = x - 100;
bar.y = y;