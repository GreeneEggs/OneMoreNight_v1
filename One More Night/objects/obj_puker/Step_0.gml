if (canattack == true) {mp_potential_step(obj_main.x, obj_main.y, .75, false);}

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
	alarm[1] = 5;
	speed = 5;
	bounce = 0;
	canattack = false;
}
if (hitcount == 3)
{
	instance_destroy();
}
if (firing == false)
{
	
	alarm[0] = 80;
	firing = true;
}