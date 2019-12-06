/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 3E72A19B
/// @DnDArgument : "health" "100 - damage"

__dnd_health = real(100 - damage);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 7E09548C
/// @DnDArgument : "x1" "-20"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-35"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "20"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-30"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FFFF"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -20, y + -35, x + 20, y + -30, __dnd_health, $FFFFFFFF, $FF0000FF & $FFFFFF, $FF00FFFF & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 550521C3
/// @DnDArgument : "var" "weapon"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "-1"
if(weapon > -1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0C1F6333
	/// @DnDParent : 550521C3
	/// @DnDArgument : "x" "-20"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "25"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_weapon"
	/// @DnDArgument : "image" "weapon"
	/// @DnDSaveInfo : "sprite" "a502e151-cd1c-4f5a-83d7-28805b314cf8"
	draw_sprite(spr_weapon, weapon, x + -20, y + 25);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1F0BA4B0
	/// @DnDParent : 550521C3
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l1F0BA4B0_0=($FF000000 >> 24);
	draw_set_alpha(l1F0BA4B0_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 237535B5
	/// @DnDParent : 550521C3
	/// @DnDArgument : "font" "fnt_ammunition"
	/// @DnDSaveInfo : "font" "38a403db-ece7-4a67-afda-6fd60835d18c"
	draw_set_font(fnt_ammunition);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7AA25DBA
	/// @DnDParent : 550521C3
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "24"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "ammunition"
	draw_text(x + 0, y + 24,  + string(ammunition));
}