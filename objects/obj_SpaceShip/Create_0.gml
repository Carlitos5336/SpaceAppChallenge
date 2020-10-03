move_speed = 2;

acceleration_a = 0.1;
deceleration_a = 0.01;

acceleration_r = 0.13;
deceleration_r = 0.02;

grav = 0.068;

h_speed = 0;
v_speed = 0;

ang_speed = 0;
radius = 2500;
radius_range = [1400, 5000];

x_offset = 0;
y_offset = 0;

speed_0 = 1;
impulse = 1.1;

rotation_dir = -1;

bullet_spd = 20;
bullet_dmg = 5;

fire = instance_create_layer(x, y, "Instances", obj_Fire);
fire.visible = false;