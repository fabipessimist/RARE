/// @description
// why, what, how? ASK FOR RANGE

in_range = point_distance(x, y, object_character.x, object_character.y) <= interaction_radius
if in_range and keyboard_check_pressed(ord("E"))//wo genau ist chara?x,y
	{
		// self changes
		active = !active;
		image_index = active;
		//connecteds changes
		//connected.active = !connected.active;
		with(connected)
			active = !active;
	}
//spieler mit mir interagieren? ja? ich geh eben active wenn ich inactive war. ich geh inactive wenn ich active war. so, weiter.
	
	
// GAMEPAD INTERACTION (press "X")	
if in_range and gamepad_button_check_pressed(0, gp_face3)
{
	active = !active;
	image_index = active;
	with(connected)
		active = !active;
}