/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 78E44413
/// @DnDArgument : "var" "shield"
/// @DnDArgument : "op" "2"
if(shield > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4BEF5306
	/// @DnDParent : 78E44413
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_shield2"
	/// @DnDSaveInfo : "sprite" "6da79feb-5f24-4802-971d-74797e33cf80"
	draw_sprite(spr_shield2, 0, x + 0, y + 0);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6CB72F9F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_tank2"
/// @DnDArgument : "image" "-1"
/// @DnDSaveInfo : "sprite" "53cea126-6512-4c4e-b844-fb6ea3173d40"
draw_sprite(spr_tank2, -1, x + 0, y + 0);

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3773CB40
event_inherited();