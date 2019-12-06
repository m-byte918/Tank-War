/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0692EB9C
/// @DnDArgument : "var" "other.kind"
/// @DnDArgument : "value" "2"
if(other.kind == 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45EFD3C3
	/// @DnDParent : 0692EB9C
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "weapon"
	weapon = -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7114D2C2
	/// @DnDParent : 0692EB9C
	/// @DnDArgument : "expr" "max(0, damage - 50)"
	/// @DnDArgument : "var" "damage"
	damage = max(0, damage - 50);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 44E4A266
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1445001F
	/// @DnDParent : 44E4A266
	/// @DnDArgument : "expr" "other.kind"
	/// @DnDArgument : "var" "weapon"
	weapon = other.kind;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AE6EA13
	/// @DnDParent : 44E4A266
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "var" "ammunition"
	ammunition = 10;
}