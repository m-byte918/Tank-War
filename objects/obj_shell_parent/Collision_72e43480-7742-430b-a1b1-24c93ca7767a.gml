/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1EFE5687
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion_small"
/// @DnDSaveInfo : "objectid" "935e9e6f-d1e0-441a-a053-75ab551a9f18"
instance_create_layer(x + 0, y + 0, "Instances", obj_explosion_small);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2FEB7CB1
instance_destroy();