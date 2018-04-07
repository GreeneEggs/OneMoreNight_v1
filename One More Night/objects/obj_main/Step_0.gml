if (keyboard_check(ord("W")) && keyboard_check(ord("A"))) {movespeed = 4;}
else if (keyboard_check(ord("W")) && keyboard_check(ord("D"))) {movespeed = 4;}
else if (keyboard_check(ord("S")) && keyboard_check(ord("A"))) {movespeed = 4;}
else if (keyboard_check(ord("S")) && keyboard_check(ord("D"))) {movespeed = 4;}
else {movespeed = 5;}

if (keyboard_check(ord("W"))) { y -= movespeed;}
if (keyboard_check(ord("S"))) { y += movespeed;}
if (keyboard_check(ord("A"))) { x -= movespeed;}
if (keyboard_check(ord("D"))) { x += movespeed;}

if(keyboard_check(vk_up))
{
	if (firing == false)
	{
	global.dir = 90;
	firing = true; 
	alarm[0] = 6;
	}
}
if(keyboard_check(vk_left))
{
	if (firing == false)
	{
	global.dir = 180;
	firing = true; 
	alarm[0] = 6;
	}
}
if(keyboard_check(vk_right))
{
	if (firing == false)
	{
	global.dir = 0;
	firing = true; 
	alarm[0] = 6;
	}
}
if(keyboard_check(vk_down))
{
	if (firing == false)
	{
	global.dir = 270;
	firing = true; 
	alarm[0] = 6;
	}
}