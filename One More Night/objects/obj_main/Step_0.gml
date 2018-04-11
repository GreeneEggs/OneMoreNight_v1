if (keyboard_check(ord("W")) && keyboard_check(ord("A")) &&!place_meeting(x,y,obj_border)) {movespeed = 4;}
else if (keyboard_check(ord("W")) && keyboard_check(ord("D")) &&!place_meeting(x,y,obj_border)) {movespeed = 4;}
else if (keyboard_check(ord("S")) && keyboard_check(ord("A")) &&!place_meeting(x,y,obj_border)) {movespeed = 4;}
else if (keyboard_check(ord("S")) && keyboard_check(ord("D")) &&  !place_meeting(x,y,obj_border)) {movespeed = 4;}
else {movespeed = 5;}

if (keyboard_check(ord("W")) && !place_meeting(x,y,obj_border))	{y -= movespeed;}
if (keyboard_check(ord("S")) && !place_meeting(x,y,obj_border))	{y += movespeed;}
if (keyboard_check(ord("A")) && !place_meeting(x,y,obj_border))	{x -= movespeed;}
if (keyboard_check(ord("D")) && !place_meeting(x,y,obj_border))	{x += movespeed;}


//Bullet Firing For Regular Gun (slingshot?)
if(keyboard_check(vk_up))
{
	
	if (firing == false)
	{
	global.dir = 90;
	firing = true; 
	alarm[0] = 20;
	}
}
if(keyboard_check(vk_left))
{
	if (firing == false)
	{
	global.dir = 180;
	firing = true; 
	alarm[0] = 20;
	}
}
if(keyboard_check(vk_right))
{
	if (firing == false)
	{
	global.dir = 0;
	firing = true; 
	alarm[0] = 20;
	}
}
if(keyboard_check(vk_down))
{
	if (firing == false)
	{
	global.dir = 270;
	firing = true; 
	alarm[0] = 20;
	}
}
//Bounce Back when colliding with enemy
if(place_meeting(x,y,obj_enemy))
{
	var nearestenemy;
	nearestenemy = instance_nearest(x,y,obj_enemy);
	
	direction = point_direction(x,y,nearestenemy.x,nearestenemy.y)+180;
	
	bounce =1;
	alarm[1] = 10;
	
}
else if (place_meeting(x,y,obj_goo)) //bounce back for goo
{
	var nearestgoo;
	nearestgoo = instance_nearest(x,y,obj_goo);
	
	direction = point_direction(x,y,nearestgoo.x,nearestgoo.y)+180;
	
	bounce =1;
	alarm[1] = 5;
	with(nearestgoo)
	{
		instance_destroy();
	}
}
if(bounce = 1) //set the speed of knockback and reset bounce
{
	
	speed = 5;
	bounce = 0;
}








