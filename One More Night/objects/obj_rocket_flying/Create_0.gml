/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FC0B21E
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)if(room==room_liftoff_cutscene){$(13_10)	path_start(path_rocket_liftoff,2,path_action_stop,false);$(13_10)}$(13_10)$(13_10)if(room==room_liftoff2){$(13_10)	path_start(path_rocket_space,3,path_action_stop,true);$(13_10)}"
/// @description Insert description here
// You can write your code in this editor
if(room==room_liftoff_cutscene){
	path_start(path_rocket_liftoff,2,path_action_stop,false);
}

if(room==room_liftoff2){
	path_start(path_rocket_space,3,path_action_stop,true);
}