/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y, obj_enemy))
{
	var nearestenemy;
	nearestenemy = instance_nearest(x,y,obj_enemy);
	with(nearestenemy)
	{
		instance_destroy();
	}
	hits++;
}
if(hits == 2) sprite_index = spr_vaultWarning
if(hits == 3) room_restart();