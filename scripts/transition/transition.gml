// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function transition(){
	/// @argument room
/// @argument duration_out
/// @argument duration_in
/// @argument color

	var target_room = argument0;
	var duration_in = argument2;
	var duration_out = argument1;
	var col = argument3;

	obj_Transition.target_room = target_room;
	obj_Transition.duration_in = duration_in;
	obj_Transition.duration_out = duration_out;
	obj_Transition.color = col;
}