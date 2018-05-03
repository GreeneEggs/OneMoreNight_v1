/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y, obj_enemy_path))
{
	hitcount++;
}if(place_meeting(x,y, obj_meatheadA) || place_meeting(x,y,obj_meatheadB))
{
	instance_destroy();
}


if(hitcount == 5)
{
	instance_destroy();
	global.coins += 5;
}