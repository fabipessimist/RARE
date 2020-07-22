/// @description Core Player Logic
// Every step of the game... ; Grundlegende Spielmechanik für den Charakter
// BOTH object_player2 and object_character (1, aka first), have the EXACT SAME KEYVARIABLES AND THE EXACT SAME CORE PLAYER LOGIC!
// Get player inputs:

key_left = keyboard_check(vk_left); /* or keyboard_check(ord("A")) or gamepad_button_check(0, gp_padl); */
key_right = keyboard_check(vk_right); /* or keyboard_check(ord("D")) or gamepad_button_check(0, gp_padr); */
key_jump = keyboard_check_pressed(vk_up); /* or keyboard_check_pressed(vk_space) or  gamepad_button_check_pressed(0, gp_padu); */
key_down = keyboard_check(vk_down);

//Controller input MOVEMENT
if (key_left) || (key_right) || (key_down) || (key_jump) 
{
	controller = 1;	
}

if (abs(gamepad_axis_value(controller, gp_axislh)) > 0.2)
{
	key_left = abs(min(gamepad_axis_value(controller, gp_axislh), 0));
	key_right = max(gamepad_axis_value(controller, gp_axislh), 0 );
}

if (abs(gamepad_axis_value(controller, gp_axislv)) > 0.2)
{
	key_down = abs(max(gamepad_axis_value(controller, gp_axislv), 0));
	key_jump = gamepad_axis_value(controller, gp_axislv)*-1;
}

if (gamepad_button_check_pressed(controller, gp_face1))
{
	key_jump = true;
}

#region parent

event_inherited();

#endregion


// Calculate movement:

var _move = key_right - key_left;
// k_r = 1, k_l = 1, => wenn gedrückt. wenn nicht gedrückt, k_r=0, k_l=0; wenn also k_r gedrückt wurde und k_l nicht! dann, 1-0=1, wir bewegen uns nach rechts. wenn k_r nicht! gedrückt wurde, aber k_l = 0-1=-1, wir bewegen uns nach links. 1 = positiv, = rechts. -1 = negativ, = links. beide gedrückt k_r=1 & k_l=1 == 1-1=0. keine bewegung.

horizontalspeed = _move * walkspeed;

verticalspeed = verticalspeed + gravitation;

if (place_meeting(x, y+1, parent_collision)) && (key_jump)
{
	verticalspeed = -jumpspeed
}


