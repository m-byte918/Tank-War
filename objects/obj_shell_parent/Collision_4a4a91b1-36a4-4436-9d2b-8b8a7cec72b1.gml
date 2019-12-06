/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1D9D1598
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion_small"
/// @DnDSaveInfo : "objectid" "935e9e6f-d1e0-441a-a053-75ab551a9f18"
instance_create_layer(x + 0, y + 0, "Instances", obj_explosion_small);

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 62DB21BF
/// @DnDApplyTo : other
/// @DnDArgument : "x" "100000"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "100000"
/// @DnDArgument : "y_relative" "1"
with(other) {
x += 100000;
y += 100000;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5032E8E8
/// @DnDApplyTo : other
/// @DnDArgument : "steps" "300"
with(other) {
alarm_set(0, 300);

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 349B0264
instance_destroy();