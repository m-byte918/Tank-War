/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1FA482B9
/// @DnDArgument : "var" "can_shoot"
/// @DnDArgument : "op" "1"
if(can_shoot < 0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 6417D68A
	/// @DnDParent : 1FA482B9
	exit;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 082A566E
/// @DnDArgument : "code" "var inst;$(13_10)var newx = x + cos(degtorad(direction))* 35;$(13_10)var newy = y - sin(degtorad(direction))* 35;$(13_10)$(13_10)inst = instance_create_layer(newx, newy, "Instances", obj_shell1);$(13_10)with (inst) {$(13_10)   speed = 16;$(13_10)   direction = obj_tank1.direction;$(13_10)   image_index = direction / 6;$(13_10)}$(13_10)"
var inst;
var newx = x + cos(degtorad(direction))* 35;
var newy = y - sin(degtorad(direction))* 35;

inst = instance_create_layer(newx, newy, "Instances", obj_shell1);
with (inst) {
   speed = 16;
   direction = obj_tank1.direction;
   image_index = direction / 6;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C6955B0
/// @DnDArgument : "expr" "-12"
/// @DnDArgument : "var" "can_shoot"
can_shoot = -12;