/// @description Insert description here
// You can write your code in this editor
if(instance_number(obj_lettuce) <= 0)
{
	lettuce_spawn_count = 0;
	lettuce_spawn_amount++;
	global.level++;
	global.spd += .010;
	lettuce_spawn_rate -= 2.5;
	alarm[0] = lettuce_spawn_rate
}

alarm[1] = room_speed *5;