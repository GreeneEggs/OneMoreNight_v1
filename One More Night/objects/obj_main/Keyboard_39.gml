/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 063F2ADF
/// @DnDArgument : "x" "5"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_border"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "85bf6257-e860-4b05-8f35-cb5f5b9f3f26"
var l063F2ADF_0 = instance_place(x + 5, y + 0, obj_border);
if (!(l063F2ADF_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3372C1A9
	/// @DnDParent : 063F2ADF
	/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)x=x+5;$(13_10)	"
	/// @description Insert description here
	// You can write your code in this editor
	
	x=x+5;
}