/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 280F8BE4
/// @DnDArgument : "var" "can_shoot"
/// @DnDArgument : "op" "1"
if(can_shoot < 0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 570579FD
	/// @DnDParent : 280F8BE4
	exit;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3251424A
/// @DnDArgument : "code" "var inst;$(13_10)var newx = x + cos(degtorad(direction))* 35;$(13_10)var newy = y - sin(degtorad(direction))* 35;$(13_10)$(13_10)inst = instance_create_layer(newx, newy, "Instances", obj_shell1);$(13_10)with (inst) {$(13_10)   speed = 16;$(13_10)   direction = obj_tank2.direction;$(13_10)   image_index = direction / 6;$(13_10)}$(13_10)"
var inst;
var newx = x + cos(degtorad(direction))* 35;
var newy = y - sin(degtorad(direction))* 35;

inst = instance_create_layer(newx, newy, "Instances", obj_shell1);
with (inst) {
   speed = 16;
   direction = obj_tank2.direction;
   image_index = direction / 6;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B08C63C
/// @DnDArgument : "expr" "-12"
/// @DnDArgument : "var" "can_shoot"
can_shoot = -12;