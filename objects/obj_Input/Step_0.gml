up_hold = keyboard_check(vk_up) or keyboard_check(ord("W"));
down_hold = keyboard_check(vk_down) or keyboard_check(ord("S"));
up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
left_hold = keyboard_check(vk_left) or keyboard_check(ord("A"));
right_hold = keyboard_check(vk_right) or keyboard_check(ord("D"));
move = keyboard_check(vk_space);
zoom = keyboard_check(ord("C"));

commit = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);