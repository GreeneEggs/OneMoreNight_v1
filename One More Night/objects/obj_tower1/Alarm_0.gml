/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objectToShoot))
{
	var bullet = instance_create_depth(x,y-35, -9, obj_bullet);
	bullet.speed = 10;
	bullet.direction = point_direction(x,y-35,objectToShoot.x, objectToShoot.y);
	alarm[0] = fire_rate;
	bullets--;
	audio_play_sound(snd_m16,0,0);
}else
{
	shooting = false;
}
if(bullets <= 0)
{
	instance_destroy();
}