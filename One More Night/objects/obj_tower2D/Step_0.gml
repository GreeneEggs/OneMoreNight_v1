/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

if(!place_meeting(x,y,obj_towerbase) or place_meeting(x,y,obj_Tower_Parent)) col = c_red;
else {col = c_white;}