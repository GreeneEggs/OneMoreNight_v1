/// @description Insert description here
// You can write your code in this editor
var en = instance_nearest(x,y, obj_main);
if(en != noone)
{
	if(point_distance(x,y,en.x,en.y) <= range)
	{
		mp_potential_step(obj_main.x,obj_main.y, 2, false);
	}
		
	
}