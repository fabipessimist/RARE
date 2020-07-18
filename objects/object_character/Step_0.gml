/// @description Core Player Logic + info bout collision parent!
// Every step of the game... ; Grundlegende Spielmechanik für den Charakter

key_left =/* keyboard_check(vk_left) or */ keyboard_check(ord("A"));
key_right = /*keyboard_check(vk_right) or */ keyboard_check(ord("D"));
key_jump  = /*keyboard_check_pressed(vk_up) or */ keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));
key_down = keyboard_check(ord("S"));

if (key_left) || (key_right) || (key_down) || (key_jump)
{
	controller = 0;	
}

if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2)
{
	key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
	key_right = max(gamepad_axis_value(0, gp_axislh), 0);
	controller = 0;
}


if (abs(gamepad_axis_value(0, gp_axislv)) > 0.2)
{
	key_down = abs(min(gamepad_axis_value(1, gp_axislv), 0));
	key_jump = max(gamepad_axis_value(1, gp_axislv), 0);
	controller = 0;
}

if (gamepad_button_check_pressed(0, gp_face1))
{
	key_jump = 1;
	controller = 0;
}


// Calculate movement:

var _move = key_right - key_left;
// k_r = 1, k_l = 1, => wenn gedrückt. wenn nicht gedrückt, k_r=0, k_l=0; wenn also k_r gedrückt wurde und k_l nicht! dann, 1-0=1, wir bewegen uns nach rechts. wenn k_r nicht! gedrückt wurde, aber k_l = 0-1=-1, wir bewegen uns nach links. 1 = positiv, = rechts. -1 = negativ, = links. beide gedrückt k_r=1 & k_l=1 == 1-1=0. keine bewegung.

horizontalspeed = _move * walkspeed;

verticalspeed = verticalspeed + gravitation;

if (place_meeting(x, y+1, parent_collision)) && (key_jump)
{
	verticalspeed = -jumpspeed
}


script_collision();



//image direction change
if x - xprevious != 0
{
image_xscale = sign(x - xprevious);
}

