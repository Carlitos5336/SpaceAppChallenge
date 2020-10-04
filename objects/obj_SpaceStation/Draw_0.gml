gpu_set_blendmode_ext(bm_src_alpha, bm_one);
draw_set_alpha(0.1);
draw_circle_colour(x, y, 800, c_white, c_black, 0);
gpu_set_blendmode(bm_normal);
draw_set_alpha(0.2);
draw_circle(x, y, radius_p, true);
draw_set_alpha(1);


draw_self();