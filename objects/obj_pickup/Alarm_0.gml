/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 418276C7
/// @DnDArgument : "expr" "choose(0,1,2)"
/// @DnDArgument : "var" "kind"
kind = choose(0,1,2);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1D84A94C
/// @DnDArgument : "steps" "100+random(500)"
alarm_set(0, 100+random(500));

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 75DBAC0F
/// @DnDArgument : "x" "32+random(room_width-64)"
/// @DnDArgument : "y" "32+random(room_height-64)"
x = 32+random(room_width-64);
y = 32+random(room_height-64);