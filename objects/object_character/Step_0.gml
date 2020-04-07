/// @description Core Player Logic
// Every step of the game... ; Grundlegende Spielmechanik für den Charakter

// Get player inputs:

key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// Calculate movement:

var _move = key_right - key_left;
// k_r = 1, k_l = 1, => wenn gedrückt. wenn nicht gedrückt, k_r=0, k_l=0; wenn also k_r gedrückt wurde und k_l nicht! dann, 1-0=1, wir bewegen uns nach rechts. wenn k_r nicht! gedrückt wurde, aber k_l = 0-1=-1, wir bewegen uns nach links. 1 = positiv, = rechts. -1 = negativ, = links. beide gedrückt k_r=1 & k_l=1 == 1-1=0. keine bewegung.

horizontalspeed = _move * walkspeed;

verticalspeed = verticalspeed + gravitation;

if (place_meeting(x, y+1, object_wall)) && (key_jump)
{
	verticalspeed = -jumpspeed
}

// für Collision => Besseres Verständis durch Erklärung in YT-Tutorial Platformer Tutorial GML von YOYO GAMES Part 1/2 , ab Minute 20!
// Horizontal collision:
// check, ob der charakter die wand berührt. solange er das nicht tut, führe aus, dass der Charakter sich horizontal bewegt.
if (place_meeting(x+horizontalspeed, y, object_wall)) 
{
	while (!place_meeting(x + sign(horizontalspeed), y, object_wall)) 
	{
		x = x + sign(horizontalspeed);
	}
	horizontalspeed = 0;
}

x = x + horizontalspeed;

// Vertical collision:
// check, ob der charakter die wand berührt. solange er das nicht tut, führe aus, dass der Charakter sich vertikal bewegt.
if (place_meeting(x, y+verticalspeed, object_wall)) 
{
	while (!place_meeting(x, y + sign(verticalspeed), object_wall)) 
	{
		y = y + sign(verticalspeed);
	}
	verticalspeed = 0;
}

y = y + verticalspeed;

//image direction change
if x - xprevious != 0
{
image_xscale = sign(x - xprevious);
}

