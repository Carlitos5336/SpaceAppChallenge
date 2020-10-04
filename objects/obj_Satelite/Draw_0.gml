gpu_set_blendmode_ext(bm_src_alpha, bm_one);
var alpha = 0.1;
var radius = 800;
var radius_2 = 0;
if(fixed){
	radius = 1000;
	radius_2 = 100;
}
draw_set_alpha(alpha);
draw_circle_colour(x, y, radius, c_white, c_black, 0);
draw_set_alpha(0.8);
draw_circle_colour(x, y, radius_2, c_white, c_black, 0);
gpu_set_blendmode(bm_normal);
draw_set_alpha(0.2);
draw_circle(x, y, radius_p, true);
draw_set_alpha(1);


draw_self();