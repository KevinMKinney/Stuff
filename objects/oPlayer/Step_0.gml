/// @desc Movement
key_left = keyboard_check(vk_left) or keyboard_check_pressed(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check_pressed(ord("D"));
key_up = keyboard_check(vk_up) or keyboard_check_pressed(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check_pressed(ord("S"));

var movex = key_right - key_left;
var movey = key_down - key_up;

	hsp = movex * walksp;
	vsp = movey * walksp;

if (global.playerdelay = 0)
{
	//animation go
	if (!key_right = false)
	{
		sprite_index = sPlayerMR;
		image_speed = imageD;
	}
	
	if (!key_left = false)
	{
		sprite_index = sPlayerML;
		image_speed = imageD;
	}
	
	if (!key_down = false)
	{
		sprite_index = sPlayerMD;
		image_speed = imageD;
	}
	
	if (!key_up = false)
	{
		sprite_index = sPlayerMU;
		image_speed = imageD;
	}
	
	
	//horizontal collision
	if (place_meeting(x + hsp, y, oWall))
	{
	hsp = 0;
	}
	x = x + hsp;

	//vertical collision
	if (place_meeting(x, y + vsp, oWall))
	{
	vsp = 0;
	}
	y = y + vsp;
	global.playerdelay = 1;
}


	
	
