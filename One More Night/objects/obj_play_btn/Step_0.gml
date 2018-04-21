/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) and position_meeting(window_mouse_get_x(),window_mouse_get_y(),self))
   {
   room_goto(level_select_rm);
   }