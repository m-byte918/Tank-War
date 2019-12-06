/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 54EEAB3A
/// @DnDArgument : "expr" "speed < 4"
if(speed < 4)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7D172136
	/// @DnDParent : 54EEAB3A
	/// @DnDArgument : "speed" "1"
	/// @DnDArgument : "speed_relative" "1"
	speed += 1;
}