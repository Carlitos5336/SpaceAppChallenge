
v_speed = 0;
ang_speed = 0;
radius = 0;
grav = 0.08;
h_speed = 0;


move_speed = 0.4;

drop = true;
radius_p = 750;

no_explosion = false;

tet = instance_create_layer(x, y - 600, "Instances", obj_Text);
tet.text = "Process Ores";
tet.visible = false;


tet1 = instance_create_layer(x, y - 600, "Instances", obj_Text);
tet1.text = "End Mission";
tet1.visible = false;

bar = instance_create_layer(x, y, "Front", obj_Bar);
bar.visible = false;
bar.creator = self;