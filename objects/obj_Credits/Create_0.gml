

// DATOS DEL SCROLLING

def_v_speed = 0.6;
v_speed = def_v_speed;
ref_y = 0; // posiciónde referencia para hacer scroll
padding_y = display_get_gui_height()/2 + 200;
padding_text = 60;

// texto
creditos = ds_list_create();

ds_list_add(creditos, "Satellites");
ds_list_add(creditos, "");
ds_list_add(creditos, "A game made by PassionFruit");
ds_list_add(creditos, "For NASA's SpaceApp Challenge 2020");
ds_list_add(creditos, "");
ds_list_add(creditos, "");
ds_list_add(creditos, "");

ds_list_add(creditos, "Game Programming");
ds_list_add(creditos, "Carlos Ogando");
ds_list_add(creditos, "");
ds_list_add(creditos, "");
ds_list_add(creditos, "");

ds_list_add(creditos, "Arts & Animations Designer");
ds_list_add(creditos, "Satellites Research");
ds_list_add(creditos, "Miguel Linares");
ds_list_add(creditos, "");
ds_list_add(creditos, "");
ds_list_add(creditos, "");

ds_list_add(creditos, "Web Page Development, Media and Videos");
ds_list_add(creditos, "Adriana Mota and Jose Felix");
ds_list_add(creditos, "");
ds_list_add(creditos, "");
ds_list_add(creditos, "");

ds_list_add(creditos, "Assets Research");
ds_list_add(creditos, "Adriana Mota, Jose Felix and Miguel Linares");
ds_list_add(creditos, "");
ds_list_add(creditos, "");
ds_list_add(creditos, "");

ds_list_add(creditos, "Music");
ds_list_add(creditos, "Space Battle by GooseNinja");
ds_list_add(creditos, "");
ds_list_add(creditos, "");
ds_list_add(creditos, "");
ds_list_add(creditos, "Fonts");
ds_list_add(creditos, "");
ds_list_add(creditos, "Bungee Shade by David Jonathan Ross");
ds_list_add(creditos, "");
ds_list_add(creditos, "Yoster Island by David Fens");
ds_list_add(creditos, "");
ds_list_add(creditos, "");
ds_list_add(creditos, "");
ds_list_add(creditos, "");

ds_list_add(creditos, "Thanks for playing!");
ds_list_add(creditos, "We hope you learned something new");
ds_list_add(creditos, "and liked it :D");

n_cred = ds_list_size(creditos);

done = false;
