/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 702D6342
/// @DnDApplyTo : other
/// @DnDArgument : "var" "shield"
/// @DnDArgument : "op" "1"
with(other) var l702D6342_0 = shield < 0;
if(l702D6342_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CC32C39
	/// @DnDApplyTo : other
	/// @DnDParent : 702D6342
	/// @DnDArgument : "expr" "15"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "damage"
	with(other) {
	damage += 15;
	
	}
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 59265A89
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion_small"
/// @DnDSaveInfo : "objectid" "935e9e6f-d1e0-441a-a053-75ab551a9f18"
instance_create_layer(x + 0, y + 0, "Instances", obj_explosion_small);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0CCFF744
instance_destroy();