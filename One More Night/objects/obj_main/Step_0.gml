if (keyboard_check(ord("W")) && keyboard_check(ord("A"))) {movespeed = 3;}
else if (keyboard_check(ord("W")) && keyboard_check(ord("D"))) {movespeed = 3;}
else if (keyboard_check(ord("S")) && keyboard_check(ord("A"))) {movespeed = 3;}
else if (keyboard_check(ord("S")) && keyboard_check(ord("D"))) {movespeed = 3;}
else {movespeed = 4;}

if (keyboard_check(ord("R")))
	{room_restart()}

if (keyboard_check(ord("W")) && !position_meeting(x,y-15,obj_border))	{y -= movespeed; }
if (keyboard_check(ord("S")) && !position_meeting(x,y+15,obj_border))	{y += movespeed;}
if (keyboard_check(ord("A")) && !position_meeting(x-12,y,obj_border))	{x -= movespeed;if(!firing)facing=-1;}
if (keyboard_check(ord("D")) && !position_meeting(x+12,y,obj_border))	{x += movespeed;if(!firing)facing=1;}


//Bullet Firing For Regular Gun (slingshot?)
if(keyboard_check(vk_up) && gunType == 0)
{
	
	if (firing == false)
	{
	global.dir = 90;
	instance_create_depth(x, y, 1, obj_bullet);
	firing = true; 
	alarm[0] = 25;
	
	audio_play_sound(snd_ak,0,0);
	}
}
if(keyboard_check(vk_left)&& gunType == 0)
{
	if (firing == false)
	{
	global.dir = 180;
	instance_create_depth(x, y, 1, obj_bullet);
	firing = true; 
	alarm[0] = 25;
	facing = -1;
	audio_play_sound(snd_ak,0,0);
	}
}
if(keyboard_check(vk_right)&& gunType == 0)
{
	if (firing == false)
	{
	global.dir = 0;
	instance_create_depth(x, y, 1, obj_bullet);
	firing = true; 
	alarm[0] = 25;
	facing = 1;
	audio_play_sound(snd_ak,0,0);
	}
}
if(keyboard_check(vk_down)&& gunType == 0)
{
	if (firing == false)
	{
	global.dir = 270;
	instance_create_depth(x, y, 1, obj_bullet);
	firing = true; 
	alarm[0] = 25;
	
	audio_play_sound(snd_ak,0,0);
	}
}
//Bounce Back when colliding with enemy
if(place_meeting(x,y,obj_enemy) )
{
	var nearestenemy;
	nearestenemy = instance_nearest(x,y,obj_enemy);
	

	direction = point_direction(x,y,nearestenemy.x,nearestenemy.y)+180;
	
	bounce =1;
	alarm[1] = 5.5;
	player_health -= 20;
	audio_play_sound(snd_punch,0,0);
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
	player_health -= 10;
	audio_play_sound(snd_splat,0,0);
}
if(bounce = 1) //set the speed of knockback and reset bounce
{
	
	speed = 5;
	bounce = 0;
}
if(player_health <=  0) room_restart();







