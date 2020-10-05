move_speed = 2;
vmove_spd = 0.4;

acceleration_a = 0.0087;
deceleration_a = 0.01;

acceleration_r = 0.13;
deceleration_r = 0.02;

h_impulse = 2.5;
v_impulse = 0.17;

grav = 0.068;

h_speed = 0;
v_speed = 0;

ang_speed = 0;
radius = random_range(4500, 5000);
radius_range = [1400, 7500];

x_offset = 0;
y_offset = 0;

death_by_planet = false;

speed_0 = move_speed *1/3;
vspeed_0 = vmove_spd * 2/3;

control = true;
rotation_dir = -1;
radius_dir = -1;

end_game = false;
input = true;

bullet_spd = 30;
bullet_dmg = 5;

fire = instance_create_layer(x, y, "Instances", obj_Fire);
fire.visible = false;

on_process = false;
on_repair = false;