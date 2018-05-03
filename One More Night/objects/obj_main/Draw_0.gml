/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19D9F05D
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)draw_sprite_ext(sprite_index,image_index,x,y,facing,1,0,c_white,1);$(13_10)"
/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y,facing,1,0,c_white,1);

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 0F1658E9
/// @DnDArgument : "x1" "928"
/// @DnDArgument : "y1" "48"
/// @DnDArgument : "x2" "992"
/// @DnDArgument : "y2" "64"
/// @DnDArgument : "value" "player_health"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF1313C1"
/// @DnDArgument : "maxcol" "$FF0FFF13"
draw_healthbar(928, 48, 992, 64, player_health, $FF000000 & $FFFFFF, $FF1313C1 & $FFFFFF, $FF0FFF13 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));