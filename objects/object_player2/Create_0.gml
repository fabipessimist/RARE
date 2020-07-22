/// @description Establish Key Variables
// why, what, how?
// zahlen = pixel per action, e.g. jump 9 pixel
// object_character (1) and object_player2 have the EXACT SAME KEYVARIABLES
event_inherited();

horizontalspeed = 0;
verticalspeed =  0;
gravitation = 0.3;
walkspeed = 6; 
jumpspeed = 11;

controller = 1;


//oneway platform ->
key_down = false;

// do we need a deadzone? gamepad_set_axis_deadzone(1, 0.2);