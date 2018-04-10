if (canattack == true) {mp_potential_step(obj_vault.x, obj_vault.y, 2, false);}

if (place_meeting(x,y,obj_bullet))
{
	var nearestbullet;
	nearestbullet = instance_nearest(x,y,obj_bullet);
	
	direction = point_direction(x,y,nearestbullet.x,nearestbullet.y) + 180;
	bounce = 1;
	hitcount += 1;
	with(nearestbullet)
	{
		instance_destroy();
	}
}
if (bounce == 1)
{
	alarm[0] = 10;
	speed = 5;
	bounce = 0;
	canattack = false;
}
if (hitcount == 2)
{
	instance_destroy();
}