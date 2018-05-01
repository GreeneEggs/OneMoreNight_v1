if (canattack == true) {mp_potential_step(obj_main.x, obj_main.y, 1, false);}

if (place_meeting(x,y,obj_bullet))
{
	var nearestbullet;
	nearestbullet = instance_nearest(x,y,obj_bullet);
	
	
	
	hitcount += 1;
	with(nearestbullet)
	{
		instance_destroy();
		global.coins += 00;
	}
}

if (hitcount == 2)
{
	instance_destroy();
}