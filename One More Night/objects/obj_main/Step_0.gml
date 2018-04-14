if (keyboard_check(ord("W")) && keyboard_check(ord("A"))) {movespeed = 3;}
else if (keyboard_check(ord("W")) && keyboard_check(ord("D"))) {movespeed = 3;}
else if (keyboard_check(ord("S")) && keyboard_check(ord("A"))) {movespeed = 3;}
else if (keyboard_check(ord("S")) && keyboard_check(ord("D"))) {movespeed = 3;}
else {movespeed = 4;}

if (keyboard_check(ord("W")) && !position_meeting(x,y-15,obj_border))	{y -= movespeed;}
if (keyboard_check(ord("S")) && !position_meeting(x,y+15,obj_border))	{y += movespeed;}
if (keyboard_check(ord("A")) && !position_meeting(x-12,y,obj_border))	{x -= movespeed; facing=-1;}
if (keyboard_check(ord("D")) && !position_meeting(x+12,y,obj_border))	{x += movespeed;facing=1;}


//Bullet Firing For Regular Gun (slingshot?)
if(keyboard_check(vk_up))
{
	
	if (firing == false)
	{
	global.dir = 90;
	instance_create_depth(x, y, 1, obj_bullet);
	firing = true; 
	alarm[0] = 25;
	}
}
if(keyboard_check(vk_left))
{
	if (firing == false)
	{
	global.dir = 180;
	instance_create_depth(x, y, 1, obj_bullet);
	firing = true; 
	alarm[0] = 25;
	}
}
if(keyboard_check(vk_right))
{
	if (firing == false)
	{
	global.dir = 0;
	instance_create_depth(x, y, 1, obj_bullet);
	firing = true; 
	alarm[0] = 25;
	}
}
if(keyboard_check(vk_down))
{
	if (firing == false)
	{
	global.dir = 270;
	instance_create_depth(x, y, 1, obj_bullet);
	firing = true; 
	alarm[0] = 25;
	}
}
//Bounce Back when colliding with enemy
if(place_meeting(x,y,obj_enemy) )
{
	var nearestenemy;
	nearestenemy = instance_nearest(x,y,obj_enemy);
	

	direction = point_direction(x,y,nearestenemy.x,nearestenemy.y)+180;
	
	bounce =1;
	alarm[1] = 5;
	
}
else if (place_meeting(x,y,obj_goo)) //bounce back for goo
{
	var nearestgoo;
	nearestgoo = instance_nearest(x,y,obj_goo);
	
	direction = point_direction(x,y,nearestgoo.x,nearestgoo.y)+180;
	
	bounce =1;
	alarm[1] = 2.5;
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








