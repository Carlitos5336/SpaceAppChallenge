instance_activate_all();
if(instance_exists(global.player)){
	global.player.control = true;
}
instance_destroy(button);
pause = false;