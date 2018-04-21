/// @description Insert description here
// You can write your code in this editor
if(!selected){
alarm_set(0,300);
alarm_set(1,1);
selected = true;
instance_create_depth(x,y,-5000,obj_fade);
}