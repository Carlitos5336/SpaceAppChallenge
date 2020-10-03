ps = part_system_create();

smoke = part_type_create();
part_type_shape(smoke, pt_shape_explosion);
part_type_life(smoke, room_speed, 2 * room_speed);
part_type_direction(smoke, 0, 359, 0, 0);
part_type_speed(smoke, 2, 1, 0.1, 0);
part_type_orientation(smoke, 0, 359, 0, 0, 0);
part_type_alpha2(smoke, 1, 0);
var col1 = make_color_rgb(181, 254, 255);
var col2 = make_color_rgb(0, 31, 184);
var col3 = c_gray;
part_type_color3(smoke, col1, col2, col3);
part_type_size(smoke, 0.1, 0.2, 0.06, 0);

circles = part_type_create();
part_type_shape(circles, pt_shape_circle);
part_type_life(circles, room_speed, 1.5 * room_speed);
part_type_orientation(circles, 0, 359, 0, 0, 0);
part_type_alpha2(circles, 1, 0);
var col1 = c_white;
var col2 = c_gray;
part_type_color2(circles, col1, col2);
part_type_size(circles, 0.1, 0.2, 0.001, 0);