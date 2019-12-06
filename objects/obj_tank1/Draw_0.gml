/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A47A569
/// @DnDArgument : "var" "shield"
/// @DnDArgument : "op" "2"
if(shield > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0FED8025
	/// @DnDParent : 1A47A569
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_shield1"
	/// @DnDSaveInfo : "sprite" "65e6b4c0-82a4-4dd6-a9bb-fc5547f59130"
	draw_sprite(spr_shield1, 0, x + 0, y + 0);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6430BA2B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_tank1"
/// @DnDArgument : "image" "-1"
/// @DnDSaveInfo : "sprite" "887f03b5-21f8-4177-8e32-11617947b313"
draw_sprite(spr_tank1, -1, x + 0, y + 0);

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 5A0AEAD1
event_inherited();