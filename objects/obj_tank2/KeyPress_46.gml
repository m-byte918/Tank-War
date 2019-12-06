/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20D68A4C
/// @DnDArgument : "var" "can_shoot"
/// @DnDArgument : "op" "1"
if(can_shoot < 0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 0A5C461E
	/// @DnDParent : 20D68A4C
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 006BF802
/// @DnDArgument : "var" "weapon"
if(weapon == 0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 77E3C61A
	/// @DnDParent : 006BF802
	/// @DnDArgument : "obj" "obj_tank1"
	/// @DnDSaveInfo : "obj" "2f853368-ad77-43d6-a429-c813bd00f3a9"
	var l77E3C61A_0 = false;
	l77E3C61A_0 = instance_exists(obj_tank1);
	if(l77E3C61A_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 07E14BB5
		/// @DnDParent : 77E3C61A
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_rocket2"
		/// @DnDSaveInfo : "objectid" "6f5410f6-a1b2-492c-a933-3c345060ed47"
		instance_create_layer(x + 0, y + 0, "Instances", obj_rocket2);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D2B1E07
		/// @DnDParent : 77E3C61A
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "ammunition"
		ammunition += -1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69F2084F
		/// @DnDParent : 77E3C61A
		/// @DnDArgument : "var" "ammunition"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "1"
		if(ammunition < 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 44B1F053
			/// @DnDParent : 69F2084F
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "weapon"
			weapon = -1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 175DB6FD
			/// @DnDParent : 69F2084F
			/// @DnDArgument : "expr" "-10"
			/// @DnDArgument : "var" "can_shoot"
			can_shoot = -10;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 238AFBDC
/// @DnDArgument : "var" "weapon"
/// @DnDArgument : "value" "1"
if(weapon == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27E6EACB
	/// @DnDParent : 238AFBDC
	/// @DnDArgument : "expr" "40"
	/// @DnDArgument : "var" "shield"
	shield = 40;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 364DCB0C
	/// @DnDParent : 238AFBDC
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ammunition"
	ammunition += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F747801
	/// @DnDParent : 238AFBDC
	/// @DnDArgument : "var" "ammunition"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(ammunition < 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 75F1C97D
		/// @DnDParent : 4F747801
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "weapon"
		weapon = -1;
	}
}