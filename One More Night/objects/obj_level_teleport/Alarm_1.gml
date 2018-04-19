/// @description Insert description here
// You can write your code in this editor

//Make a ton of zombies come out of nowhere


for(i= 0; i<20; i++){
	
instance_create_depth(x+(i*5),room_height,layer,obj_skeleton);	
}