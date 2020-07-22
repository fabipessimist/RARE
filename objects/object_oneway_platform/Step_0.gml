/// ist der player in der nähe? dann pls collision box
// Shaun Spalding YT-TUT: oneway platform

/*	OLD COLLISION, player1 wird ignoriert bzw überschrieben. funktioniert nur für unteren player oder wenn nur ein player angegeben ist!
//player 1
if (instance_exists(object_character))
{
	//			player clipping in platform							  or		down press
	//		lowest position player  >  my y							  or		down press
	if (object_character.bbox_bottom>y) or (object_player2.key_down)
	//if (bbox_bottom>y) or (object_character.key_down)
		mask_index = -1;
	
	else mask_index = oneway_platform_sprite;
}

//player 2
if (instance_exists(object_player2))
{
	//			player clipping in platform							  or		down press
	//		lowest position player  >  my y							  or		down press
	//if (round(object_player2.y + (object_player2.sprite_height/2))>y) or (object_player2.key_down)
	if (object_player2.bbox_bottom>y) or (object_player2.key_down)
		mask_index = -1;
	
	else mask_index = oneway_platform_sprite;
}
//*/



