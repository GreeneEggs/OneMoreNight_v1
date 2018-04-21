/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 258271BA
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 286D3D22
/// @DnDArgument : "imageind" "5"
sprite_index = noone;
image_index = 5;

/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 7F41963F
/// @DnDApplyTo : 8ea0432e-8718-4c04-a400-114ba5dc57d4
/// @DnDArgument : "objind" "obj_contamination"
/// @DnDSaveInfo : "objind" "7604a96c-efd1-451f-856d-e7d6abcde0d9"
with(obj_earth) instance_change(obj_contamination, true);