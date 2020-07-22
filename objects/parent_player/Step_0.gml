/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

#region passthrough platform



//activate/deactiveta vertical collision
if collision_vert //vertical collision active
{
	//dropthrough down
	if key_down and place_meeting(x,y+1,parent_passthrough)
	{
		collision_vert = false;
	}
	
	//passthrough up
	if place_meeting(x,y+min(verticalspeed,0),parent_passthrough)
	{
		collision_vert = false;
		show_debug_message("////////////coll deakt");
	}
}
else//vertical collision false
{
	//no contact  collision activate
	if !place_meeting(x,y,parent_passthrough)
		collision_vert = true;
	else
		verticalspeed = max( passthrough_spd_min, abs(verticalspeed)) * sign(verticalspeed);
}
#endregion