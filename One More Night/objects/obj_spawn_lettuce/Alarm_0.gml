/// @description Insert description here
// You can write your code in this editor
if(lettuce_spawn_count < lettuce_spawn_amount)
{
	instance_create_depth(x,y,-1, obj_lettuce);
	lettuce_spawn_count++;
	alarm[0] = lettuce_spawn_rate;
}
