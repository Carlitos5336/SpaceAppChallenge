
v_speed = 0;
ang_speed = 0;
radius = 0;
grav = 0.08;
h_speed = 0;

move_speed = 0.4;

drop = true;
radius_p = 500;


no_explosion = false;

tet = instance_create_layer(x, y - 600, "Instances", obj_Text);
tet.text = "Repair Satelite";
tet.visible = false;

bar = instance_create_layer(x, y, "Front", obj_Bar);
bar.visible = false;
bar.creator = self;

iron = 0;
nickel = 0;
platinum = 0;
gold = 0;

fixed = false;

pause = false;

button = noone;
on_box = false;