/// @func script_collision(arg);
/// @desc description
/*
collision for objekt with collision parent



*/

// für Collision => Besseres Verständis durch Erklärung in YT-Tutorial Platformer Tutorial GML von YOYO GAMES Part 1/2 , ab Minute 20!
// Horizontal collision:
// check, ob der charakter die wand berührt. solange er das nicht tut, führe aus, dass der Charakter sich horizontal bewegt.
if (place_meeting(x+horizontalspeed, y, parent_collision)) 
{
	while (!place_meeting(x + sign(horizontalspeed), y, parent_collision)) 
	{
		x = x + sign(horizontalspeed);
	}
	horizontalspeed = 0;
}

x = x + horizontalspeed;

// Vertical collision:
// check, ob der charakter die wand berührt. solange er das nicht tut, führe aus, dass der Charakter sich vertikal bewegt.
if collision_vert //if vertical collision is active
if (place_meeting(x, y+verticalspeed, parent_collision)) 
{
	while (!place_meeting(x, y + sign(verticalspeed), parent_collision)) 
	{
		y = y + sign(verticalspeed);
	}
	verticalspeed = 0;
}

y = y + verticalspeed;