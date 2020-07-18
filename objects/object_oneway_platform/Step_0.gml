/// ist der player in der nähe? dann pls collision box
// Shaun Spalding YT-TUT: oneway platform

if (instance_exists(object_player2))
{
	if (round(object_player2.y + (object_player2.sprite_height/2))>y) || (object_player2.key_down) mask_index = -1; 
	
	else mask_index = oneway_platform_sprite;

}

if (instance_exists(object_character))
{
	if (round(object_character.y + (object_character.sprite_height/2))>y) || (object_character.key_down) mask_index = -1; 
	
	else mask_index = oneway_platform_sprite;

}
