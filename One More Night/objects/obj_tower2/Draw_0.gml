/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_circle(x,y, range, true);

var en = instance_nearest(x,y, obj_enemy);
if(en != noone)
{
	if(point_distance(x,y,en.x,en.y) <= range+15 ){
		if (!shooting)
		{
			alarm[0] =1;
			shooting = true;
		}
		objectToShoot = en;
		
	}else
	{
		shooting = false;
		objectToShoot = noone;
	}
}