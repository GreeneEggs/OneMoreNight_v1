/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F8ACF3F
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 743E8105
/// @DnDArgument : "imageind" "5"
/// @DnDArgument : "spriteind" "spr_contamination"
/// @DnDSaveInfo : "spriteind" "6cf29dfd-ea34-4b6e-a494-5b1c458aae96"
sprite_index = spr_contamination;
image_index = 5;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 14FB25AB
/// @DnDArgument : "objectid" "obj_fadeOut"
/// @DnDSaveInfo : "objectid" "b16b7370-677a-4bff-a10b-a390f3eedc13"
instance_create_layer(0, 0, "Instances", obj_fadeOut);