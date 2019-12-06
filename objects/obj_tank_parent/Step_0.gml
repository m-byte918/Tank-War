/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A579CED
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "can_shoot"
can_shoot += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 578FDD7D
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "shield"
shield += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B95BC50
/// @DnDArgument : "var" "damage"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(damage < 100)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 369B70FD
	/// @DnDParent : 5B95BC50
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D2FAFB3
/// @DnDArgument : "var" "object_index"
/// @DnDArgument : "value" "obj_tank1"
if(object_index == obj_tank1)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 51810376
	/// @DnDApplyTo : 1eded65a-d2bb-46ba-afbf-fe54cfa30cdd
	/// @DnDParent : 1D2FAFB3
	/// @DnDArgument : "score" "1"
	/// @DnDArgument : "score_relative" "1"
	with(obj_tank2) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(1);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4833F4D2
else
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 6CACD4BA
	/// @DnDApplyTo : 2f853368-ad77-43d6-a429-c813bd00f3a9
	/// @DnDParent : 4833F4D2
	/// @DnDArgument : "score" "1"
	/// @DnDArgument : "score_relative" "1"
	with(obj_tank1) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(1);
	}
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0A87B24D
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion_large"
/// @DnDSaveInfo : "objectid" "dfa42b0a-c0a1-4361-a5a6-e29ca8f52014"
instance_create_layer(x + 0, y + 0, "Instances", obj_explosion_large);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 653E4DE5
instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5A543AAA
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "can_shoot"
can_shoot += 1;