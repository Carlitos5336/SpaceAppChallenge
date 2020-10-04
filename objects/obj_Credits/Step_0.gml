if(global.input.escape || done)
{
	transition(Menu, 2, 2, c_white);
}

// SCROLL
v_speed = def_v_speed;
if(keyboard_check(vk_enter) || keyboard_check(vk_space))
{
	v_speed = 3;
}

ref_y -= v_speed;
