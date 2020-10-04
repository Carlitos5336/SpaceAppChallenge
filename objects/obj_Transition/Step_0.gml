if(target_room != noone)
{
	if(room != target_room)
	{
		// fade out
		fade = min(1, fade + 1/(duration_out * room_speed));
	}
	else
	{	// fade in
		fade = max(0, fade - 1/(duration_in * room_speed));
		if(fade == 0)
		{
			// terminó el fade in (transición completa)
			target_room = noone;
		}
	}
	if(fade == 1)
	{   // terminó fade out
		room_goto(target_room);
	}
}