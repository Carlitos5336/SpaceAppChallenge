
var anim = instance_create_layer(x, y, "Instances", obj_Animation);
anim.sprite_index = choose(spr_exp1, spr_exp3);
anim.image_index = 0;
var _scale = random_range(1, 1.5);
anim.image_xscale = _scale;
anim.image_yscale = _scale;
anim.image_angle = -90 + point_direction(global.planet.x, global.planet.y, x, y);

instance_destroy();