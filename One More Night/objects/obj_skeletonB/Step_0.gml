if (canattack == true) {mp_potential_step(obj_vault.x, obj_vault.y, 1.5, false);}

if (place_meeting(x,y,obj_bullet))
{
	var nearestbullet;
	nearestbullet = instance_nearest(x,y,obj_bullet);
	
	
	
	hitcount += 1;
	with(nearestbullet)
	{
		instance_destroy();
		global.coins += 05;
	}
}
if (place_meeting(x,y,obj_barb))
{
	direction = point_direction(x,y,obj_barb.x,obj_barb.y) + 180;
	bounce =1;
	hitcount+=1;
}
if (bounce == 1)
{
	alarm[0] = 5;
	speed = 5;
	bounce = 0;
	canattack = false; //reset to follow player again
}
if (hitcount == 2)
{
	audio_play_sound(snd_bones,0,0);
	instance_destroy();
	
}