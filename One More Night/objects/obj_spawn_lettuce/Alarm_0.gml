/// @description Insert description here
// You can write your code in this editor
if(spawn_count < spawn_amount)
{
	if( instance_number(obj_enemy) >= 5) )
	{
		instance_create_depth(x,y,-1, obj_meathead);
	}
	else 
	{
		instance_create_depth(x,y,-1, obj_lettuce);
	}
	spawn_count++;
	alarm[0] = spawn_rate;
}
