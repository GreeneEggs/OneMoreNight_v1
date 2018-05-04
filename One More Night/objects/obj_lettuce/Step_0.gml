if (canattack == true) {mp_potential_step(obj_main.x, obj_main.y, 1, false);} //follow player until struck by bullet

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
if (bounce == 1)
{
	alarm[0] = 5;
	speed = 5;
	bounce = 0;
	canattack = false; //reset to follow player again
}
if (hitcount == 2)  //set hitcount; once it has been hit twice
{
	audio_play_sound(snd_yelp,0,0);
	instance_destroy(); //destroy the object
	global.coins += 10;
}