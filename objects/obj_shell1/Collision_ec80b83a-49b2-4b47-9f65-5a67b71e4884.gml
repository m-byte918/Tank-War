/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 099198A7
/// @DnDApplyTo : other
/// @DnDArgument : "var" "shield"
/// @DnDArgument : "op" "3"
with(other) var l099198A7_0 = shield <= 0;
if(l099198A7_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D02952C
	/// @DnDApplyTo : other
	/// @DnDParent : 099198A7
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "damage"
	with(other) {
	damage += 10;
	
	}
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4051CCA2
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion_small"
/// @DnDSaveInfo : "objectid" "935e9e6f-d1e0-441a-a053-75ab551a9f18"
instance_create_layer(x + 0, y + 0, "Instances", obj_explosion_small);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 26DE2993
instance_destroy();