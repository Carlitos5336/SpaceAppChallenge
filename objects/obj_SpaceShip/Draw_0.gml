gpu_set_blendmode_ext(bm_src_alpha, bm_one);
draw_set_alpha(0.3);
draw_circle_colour(x, y, 250, c_blue, c_black, 0);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
draw_self();