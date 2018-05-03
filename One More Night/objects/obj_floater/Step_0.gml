/// @description Insert description here
// You can write your code in this editor
var en = instance_nearest(x,y, obj_main);
if(en != noone)
{
	if(point_distance(x,y,en.x,en.y) <= range)
	{
		mp_potential_step(obj_main.x,obj_main.y, 1, false);
	}
		
	
}if (place_meeting(x,y,obj_bullet)) //When hit by bullet
{
	var nearestbullet;
	nearestbullet = instance_nearest(x,y,obj_bullet);
	 
	
	hitcount += 1;
	with(nearestbullet)
	{
		instance_destroy();		//destroy bullet
		
	}
}

if (hitcount == 15)  //set hitcount; once it has been hit twice
{
	instance_destroy(); //destroy the object
	global.coins += 100;
}