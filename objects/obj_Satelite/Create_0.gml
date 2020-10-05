
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
tet.text = "Repair Satellite";
tet.visible = false;

bar = instance_create_layer(x, y, "Front", obj_Bar);
bar.visible = false;
bar.creator = self;

iron = 0;
nickel = 0;
platinum = 0;
gold = 0;

mins = [iron, nickel, platinum, gold];
images = [spr_Iron, spr_Nickel, spr_Platinum, spr_Gold];


fixed = false;

pause = false;

button = noone;
on_box = false;

cells = ds_list_create();

function create_cells(){
	mins = [iron, nickel, platinum, gold];
	for(var i = 0; i < 4; i++){
		if(mins[i] > 0){
			var new_cell = instance_create_layer(x, y, "Instances", obj_Cell);
			new_cell.number = mins[i];
			new_cell.image = images[i];
			new_cell.visible = false;
			new_cell.rpos = i;
			ds_list_add(cells, new_cell);
		}
	}
}
