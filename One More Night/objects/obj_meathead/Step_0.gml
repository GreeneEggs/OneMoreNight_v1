if (canattack == true) {mp_potential_step(obj_vault.x, obj_vault.y, .75, false);}

if (place_meeting(x,y,obj_bullet))
{
	var nearestbullet;
	nearestbullet = instance_nearest(x,y,obj_bullet);
	
	
	hitcount += 1;
	with(nearestbullet)
	{
		instance_destroy();
		global.coins += 50;
	}
}

if (hitcount == 3)
{
	instance_destroy();
}