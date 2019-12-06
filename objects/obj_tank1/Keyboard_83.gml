/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 54EEAB3A
/// @DnDArgument : "expr" "speed > 0"
if(speed > 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7D172136
	/// @DnDParent : 54EEAB3A
	/// @DnDArgument : "speed" "-0.5"
	/// @DnDArgument : "speed_relative" "1"
	speed += -0.5;
}