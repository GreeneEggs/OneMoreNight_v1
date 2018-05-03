/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70639D3E
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1);$(13_10)"
/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1);

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 01E5A05B
/// @DnDArgument : "x1" "431"
/// @DnDArgument : "y1" "15"
/// @DnDArgument : "x2" "490"
/// @DnDArgument : "y2" "31"
/// @DnDArgument : "value" "vault_health"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000D6"
/// @DnDArgument : "maxcol" "$FF1AFF0A"
draw_healthbar(431, 15, 490, 31, vault_health, $FF000000 & $FFFFFF, $FF0000D6 & $FFFFFF, $FF1AFF0A & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));