/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y, obj_skeletonA) || place_meeting(x,y, obj_skeletonB))
{
	var nearestenemy;
	nearestenemy = instance_nearest(x,y,obj_enemy);
	with(nearestenemy)
	{
		instance_destroy();
	}
	audio_play_sound(snd_vault_hit,0,0);
	vault_health -= 10;
	
}
if(place_meeting(x,y, obj_meatheadA) || place_meeting(x,y, obj_meatheadB))
{
	var nearestenemy;
	nearestenemy = instance_nearest(x,y,obj_enemy);
	with(nearestenemy)
	{
		instance_destroy();
	}
	vault_health -= 50;
	audio_play_sound(snd_vault_hit,0,0);
}
if(vault_health <= 50) sprite_index = spr_vaultWarning
if(vault_health <= 0) room_restart();