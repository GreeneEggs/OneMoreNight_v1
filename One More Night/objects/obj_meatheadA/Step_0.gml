if (canattack == true) {mp_potential_step(obj_vault.x, obj_vault.y, .75, false);}

if (place_meeting(x,y,obj_bullet)) //When hit by bullet
{
	var nearestbullet;
	nearestbullet = instance_nearest(x,y,obj_bullet);
	
	direction = point_direction(x,y,nearestbullet.x,nearestbullet.y) + 180; //knock back 
	bounce = 1;
	hitcount += 1;
	with(nearestbullet)
	{
		instance_destroy();		//destroy bullet
		
	}
}
/*if (place_meeting(x,y,obj_barb))
{
	direction = point_direction(x,y,obj_barb.x,obj_barb.y) + 180;
	bounce =1;
	hitcount+=1;
}*/
if (bounce == 1)
{
	alarm[0] = 2.5;
	speed = 5;
	bounce = 0;
	canattack = false; //reset to follow player again
}
if (hitcount == 8)  //set hitcount; once it has been hit twice
{
	instance_destroy(); //destroy the object
	global.coins += 25;
}